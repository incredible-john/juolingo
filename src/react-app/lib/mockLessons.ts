import type { LessonWithChallenges } from "./types";

type MockChallenge = Omit<LessonWithChallenges["challenges"][number], "tokens">;

const mockChallenges: MockChallenge[] = [
	{
		id: -101,
		lessonId: -1,
		type: "DICTATION_ASSEMBLY",
		question: "She is reading a book.",
		sentence: null,
		translation: "她正在读一本书。",
		audioUrl: null,
		order: 0,
		createdAt: new Date("2026-03-24T00:00:00.000Z").toISOString(),
		options: [],
	},
	// {
	// 	id: -102,
	// 	lessonId: -1,
	// 	type: "DICTATION_ASSEMBLY",
	// 	question: "They are playing in the park.",
	// 	sentence: null,
	// 	translation: "他们正在公园里玩。",
	// 	audioUrl: null,
	// 	order: 1,
	// 	createdAt: new Date("2026-03-24T00:00:00.000Z").toISOString(),
	// 	options: [],
	// },
	// {
	// 	id: -103,
	// 	lessonId: -1,
	// 	type: "DICTATION_ASSEMBLY",
	// 	question: "We need to catch the early bus.",
	// 	sentence: null,
	// 	translation: "我们需要赶上早班车。",
	// 	audioUrl: null,
	// 	order: 2,
	// 	createdAt: new Date("2026-03-24T00:00:00.000Z").toISOString(),
	// 	options: [],
	// },
];

export const dictationAssemblyMockLesson: LessonWithChallenges = {
	id: -1,
	unitId: -1,
	title: "Dictation Assembly Test",
	order: 0,
	createdAt: new Date("2026-03-24T00:00:00.000Z").toISOString(),
	challenges: mockChallenges.map((challenge) => ({
		...challenge,
		tokens: [],
	})),
};
