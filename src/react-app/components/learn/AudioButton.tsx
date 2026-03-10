import { Volume2 } from "lucide-react";
import { useRef, useState } from "react";
import { cn } from "@/lib/utils";

interface AudioButtonProps {
	audioUrl?: string | null;
	text?: string | null;
	size?: "sm" | "md";
	className?: string;
}

export function AudioButton({ audioUrl, text, size = "md", className }: AudioButtonProps) {
	const audioRef = useRef<HTMLAudioElement | null>(null);
	const [playing, setPlaying] = useState(false);

	const handlePlay = () => {
		const audioSrc = text ? `/api/audio/tts?text=${encodeURIComponent(text)}` : audioUrl ? `/api/audio/${audioUrl}` : null;
		if (!audioSrc) return;

		if (audioRef.current) {
			audioRef.current.pause();
			audioRef.current = null;
		}

		const audio = new Audio(audioSrc);
		audioRef.current = audio;

		audio.play().then(() => setPlaying(true)).catch(() => setPlaying(false));
		audio.addEventListener("ended", () => setPlaying(false));
		audio.addEventListener("error", () => setPlaying(false));
	};

	const isDisabled = !audioUrl && !text;

	return (
		<button
			onClick={handlePlay}
			disabled={isDisabled}
			className={cn(
				"flex items-center justify-center rounded-xl bg-duo-blue text-white transition-all active:scale-95 disabled:opacity-40",
				playing && "opacity-75",
				size === "sm" ? "h-8 w-8" : "h-10 w-10",
				className
			)}
		>
			<Volume2 size={size === "sm" ? 16 : 20} />
		</button>
	);
}
