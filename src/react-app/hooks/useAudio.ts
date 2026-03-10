import { useEffect, useRef, useState } from "react";

export function useAudio(text: string | null, autoPlay = false) {
	const audioRef = useRef<HTMLAudioElement | null>(null);
	const [playing, setPlaying] = useState(false);

	const play = () => {
		if (!text?.trim()) return;

		if (audioRef.current) {
			audioRef.current.pause();
			audioRef.current = null;
		}

		const url = `/api/audio/tts?text=${encodeURIComponent(text.trim())}`;
		const audio = new Audio(url);
		audioRef.current = audio;

		audio.play().then(() => setPlaying(true)).catch(() => setPlaying(false));
		audio.addEventListener("ended", () => setPlaying(false));
		audio.addEventListener("error", () => setPlaying(false));
	};

	useEffect(() => {
		if (autoPlay) {
			play();
		}
		return () => {
			audioRef.current?.pause();
			audioRef.current = null;
		};
	}, []);

	return { play, playing };
}
