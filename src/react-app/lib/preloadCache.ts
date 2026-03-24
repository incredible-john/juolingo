import type { Challenge } from "./types";
import { extractWords } from "./textSegmentation";

export type TtsVariant = "normal" | "slow";

const audioBlobCache = new Map<string, string>();
const audioPendingCache = new Map<string, Promise<string | null>>();

export function buildTtsUrl(text: string, variant: TtsVariant = "normal"): string {
	const params = new URLSearchParams({ text });
	if (variant !== "normal") {
		params.set("variant", variant);
	}
	return `/api/audio/tts?${params.toString()}`;
}

async function preloadAudio(
	text: string,
	signal?: AbortSignal,
	variant: TtsVariant = "normal",
): Promise<string | null> {
	const url = buildTtsUrl(text, variant);
	if (audioBlobCache.has(url)) return audioBlobCache.get(url)!;
	if (audioPendingCache.has(url)) return audioPendingCache.get(url)!;

	const p = fetch(url, { signal })
		.then(async (res) => {
			if (!res.ok) return null;
			const blob = await res.blob();
			const blobUrl = URL.createObjectURL(blob);
			audioBlobCache.set(url, blobUrl);
			return blobUrl;
		})
		.catch(() => null)
		.finally(() => audioPendingCache.delete(url));
	audioPendingCache.set(url, p);
	return p;
}

export function getCachedAudioUrl(text: string, variant: TtsVariant = "normal"): string | null {
	return audioBlobCache.get(buildTtsUrl(text, variant)) ?? null;
}

const translationCache = new Map<string, string>();
const translationPendingCache = new Map<string, Promise<string | null>>();

async function preloadTranslation(word: string, signal?: AbortSignal): Promise<string | null> {
	if (translationCache.has(word)) return translationCache.get(word)!;
	if (translationPendingCache.has(word)) return translationPendingCache.get(word)!;

	const p = fetch(`/api/translate/translate?text=${encodeURIComponent(word)}&from=en&to=zh`, { signal })
		.then(async (res) => {
			if (!res.ok) return null;
			const data = await res.json();
			if (data.translations && data.translations.length > 0) {
				translationCache.set(word, data.translations[0]);
				return data.translations[0] as string;
			}
			return null;
		})
		.catch(() => null)
		.finally(() => translationPendingCache.delete(word));
	translationPendingCache.set(word, p);
	return p;
}

export function getCachedTranslation(word: string): string | null {
	return translationCache.get(word) ?? null;
}

export async function fetchTranslation(word: string): Promise<string | null> {
	if (translationCache.has(word)) return translationCache.get(word)!;
	return preloadTranslation(word);
}

let preloadAbort: AbortController | null = null;

export function stopPreload(): void {
	if (preloadAbort) {
		preloadAbort.abort();
		preloadAbort = null;
	}
}

export function preloadChallenges(challenges: Challenge[]): void {
	stopPreload();
	const abort = new AbortController();
	preloadAbort = abort;
	const { signal } = abort;

	const sorted = [...challenges].sort((a, b) => a.order - b.order);

	(async () => {
		for (const c of sorted) {
			if (signal.aborted) return;

			await preloadAudio(c.question, signal);
			if (signal.aborted) return;

			if (c.type === "DICTATION_ASSEMBLY") {
				await preloadAudio(c.question, signal, "slow");
				if (signal.aborted) return;
			}

			const words = extractWords(c.question);
			for (const word of words) {
				if (signal.aborted) return;
				await preloadAudio(word, signal);
			}
			for (const word of words) {
				if (signal.aborted) return;
				await preloadTranslation(word, signal);
			}

			for (const opt of c.options) {
				if (signal.aborted) return;
				await preloadAudio(opt.text, signal);
			}
		}
	})();
}
