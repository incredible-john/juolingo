import { Hono } from "hono";
import { eq, asc } from "drizzle-orm";
import { getDb } from "../../db";
import * as schema from "../../db/schema";
import type { AppEnv, AppVariables } from "../types";

type ChallengeWithProgress = {
	challengeProgress?: { completed: boolean }[] | null;
};

type LessonWithChallengesAndProgress = {
	challenges: ChallengeWithProgress[];
	[key: string]: unknown;
};

function normalizeUnitsWithLessonCompletion<
	T extends { lessons: LessonWithChallengesAndProgress[]; [key: string]: unknown },
>(data: T[]): T[] {
	return data.map((unit) => {
		const lessonsWithCompletedStatus = unit.lessons.map((lesson) => {
			if (lesson.challenges.length === 0) {
				return { ...lesson, completed: false as const };
			}

			const allCompletedChallenges = lesson.challenges.every((challenge) => {
				const progress = challenge.challengeProgress;
				return (
					!!progress &&
					progress.length > 0 &&
					progress.every((p) => p.completed)
				);
			});

			return { ...lesson, completed: allCompletedChallenges as boolean };
		});

		return { ...unit, lessons: lessonsWithCompletedStatus };
	});
}

const app = new Hono<{ Bindings: AppEnv; Variables: AppVariables }>();

app.get("/", async (c) => {
	const db = getDb(c.env.DB);
	const allSubjects = await db
		.select()
		.from(schema.subjects)
		.orderBy(asc(schema.subjects.order));
	return c.json(allSubjects);
});

app.get("/:id/units", async (c) => {
	const db = getDb(c.env.DB);
	const subjectId = Number(c.req.param("id"));
	const userId = c.get("userId");

	if (userId) {
		const data = await db.query.units.findMany({
			where: eq(schema.units.subjectId, subjectId),
			orderBy: (units, { asc: ascFn }) => [ascFn(units.order)],
			with: {
				lessons: {
					orderBy: (lessons, { asc: ascFn }) => [ascFn(lessons.order)],
					with: {
						challenges: {
							orderBy: (challenges, { asc: ascFn }) => [ascFn(challenges.order)],
							with: {
								challengeProgress: {
									where: eq(schema.challengeProgress.userId, userId),
								},
							},
						},
					},
				},
			},
		});
		const normalizedData = normalizeUnitsWithLessonCompletion(data);
		return c.json(normalizedData);
	}

	const unitsWithLessons = await db.query.units.findMany({
		where: eq(schema.units.subjectId, subjectId),
		orderBy: (units, { asc: ascFn }) => [ascFn(units.order)],
		with: {
			lessons: {
				orderBy: (lessons, { asc: ascFn }) => [ascFn(lessons.order)],
			},
		},
	});

	const withCompletion = unitsWithLessons.map((unit) => ({
		...unit,
		lessons: unit.lessons.map((lesson) => ({ ...lesson, completed: false as const })),
	}));
	return c.json(withCompletion);
});

export default app;
