#!/usr/bin/env node
/**
 * Extracts "The Lion and the Mouse" unit from seed_from_local.sql
 * and generates a seed file with correct FK insert order for remote.
 *
 * Usage: node scripts/extract-lion-mouse-seed.mjs
 */

import { readFileSync, writeFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";

const __dirname = dirname(fileURLToPath(import.meta.url));
const projectRoot = join(__dirname, "..");

const LION_MOUSE_UNIT_ID = 6;
const LION_MOUSE_SUBJECT_ID = 2;
const LION_MOUSE_LESSON_IDS = [19, 20, 21, 22, 23, 24, 25, 26];

function parseInsert(line) {
	const match = line.match(/^INSERT INTO "(\w+)" VALUES\((.*)\);?$/);
	if (!match) return null;
	const [, table, values] = match;
	// Parse values - handle quoted strings with escaped quotes, numbers, NULL
	const parsed = [];
	let i = 0;
	while (i < values.length) {
		if (values[i] === "'") {
			let end = i + 1;
			while (end < values.length) {
				if (values[end] === "'") {
					if (values[end + 1] === "'") end += 2; // escaped quote
					else break;
				} else end++;
			}
			parsed.push(values.slice(i, end + 1));
			i = end + 2; // skip closing quote and comma
		} else if (values.slice(i).startsWith("NULL")) {
			parsed.push("NULL");
			i += 4;
		} else if (/^\d/.test(values.slice(i))) {
			const numMatch = values.slice(i).match(/^(\d+)/);
			parsed.push(numMatch[1]);
			i += numMatch[1].length;
		} else {
			i++;
		}
		if (values[i] === ",") i++;
	}
	return { table, values: parsed, raw: line };
}

function main() {
	const seedPath = join(projectRoot, "seed_from_local.sql");
	const content = readFileSync(seedPath, "utf-8");
	const lines = content.split("\n").filter((l) => l.trim());

	const byTable = {
		subjects: [],
		units: [],
		lessons: [],
		challenges: [],
		challenge_options: [],
		challenge_tokens: [],
	};

	// Pass 1: collect challenge IDs (file has options before challenges, so we need this first)
	const challengeIds = new Set();
	for (const line of lines) {
		const parsed = parseInsert(line);
		if (!parsed || parsed.table !== "challenges") continue;
		const lessonId = parseInt(parsed.values[1], 10);
		if (LION_MOUSE_LESSON_IDS.includes(lessonId)) {
			challengeIds.add(parseInt(parsed.values[0], 10));
		}
	}

	// Pass 2: collect all rows
	for (const line of lines) {
		const parsed = parseInsert(line);
		if (!parsed) continue;
		const { table, values, raw } = parsed;
		if (!byTable[table]) continue;

		if (table === "subjects" && parseInt(values[0], 10) === LION_MOUSE_SUBJECT_ID) {
			byTable.subjects.push(raw);
		} else if (table === "units" && parseInt(values[0], 10) === LION_MOUSE_UNIT_ID) {
			byTable.units.push(raw);
		} else if (table === "lessons" && parseInt(values[1], 10) === LION_MOUSE_UNIT_ID) {
			byTable.lessons.push(raw);
		} else if (table === "challenges") {
			const lessonId = parseInt(values[1], 10);
			if (LION_MOUSE_LESSON_IDS.includes(lessonId)) {
				byTable.challenges.push(raw);
			}
		} else if (table === "challenge_options") {
			const cid = parseInt(values[1], 10);
			if (challengeIds.has(cid)) byTable.challenge_options.push(raw);
		} else if (table === "challenge_tokens") {
			const cid = parseInt(values[1], 10);
			if (challengeIds.has(cid)) byTable.challenge_tokens.push(raw);
		}
	}

	const output = [
		"-- Seed: The Lion and the Mouse unit (狮子与老鼠)",
		"-- Generated from seed_from_local.sql. Run on remote after clearing this unit's lessons.",
		"-- FK order: subjects -> units -> lessons -> challenges -> options -> tokens",
		"",
		...byTable.subjects,
		...byTable.units,
		...byTable.lessons,
		...byTable.challenges,
		...byTable.challenge_options,
		...byTable.challenge_tokens,
	].join("\n");

	const outPath = join(projectRoot, "seed_lion_mouse_remote.sql");
	writeFileSync(outPath, output, "utf-8");

	console.log(`Written ${outPath}`);
	console.log(`  subjects: ${byTable.subjects.length}`);
	console.log(`  units: ${byTable.units.length}`);
	console.log(`  lessons: ${byTable.lessons.length}`);
	console.log(`  challenges: ${byTable.challenges.length}`);
	console.log(`  challenge_options: ${byTable.challenge_options.length}`);
	console.log(`  challenge_tokens: ${byTable.challenge_tokens.length}`);
}

main();
