import { Hono } from "hono";
import { and, eq } from "drizzle-orm";
import { getDb } from "../../db";
import * as schema from "../../db/schema";
import type { AppEnv, AppVariables } from "../types";

const app = new Hono<{ Bindings: AppEnv; Variables: AppVariables }>();

/** 将当前用户在某道 challenge 上标记为已完成（需登录） */
app.post("/challenges/:challengeId/complete", async (c) => {
	const userId = c.get("userId");
	if (!userId) {
		return c.json({ error: "Unauthorized" }, 401);
	}

	const challengeId = Number(c.req.param("challengeId"));
	if (!Number.isFinite(challengeId) || challengeId <= 0) {
		return c.json({ error: "Invalid challenge id" }, 400);
	}

	const db = getDb(c.env.DB);

	const [existing] = await db
		.select({ id: schema.challengeProgress.id })
		.from(schema.challengeProgress)
		.where(
			and(
				eq(schema.challengeProgress.userId, userId),
				eq(schema.challengeProgress.challengeId, challengeId),
			),
		)
		.limit(1);

	if (existing) {
		await db
			.update(schema.challengeProgress)
			.set({ completed: true })
			.where(eq(schema.challengeProgress.id, existing.id));
	} else {
		await db.insert(schema.challengeProgress).values({
			userId,
			challengeId,
			completed: true,
		});
	}

	return c.json({ ok: true, challengeId });
});

export default app;
