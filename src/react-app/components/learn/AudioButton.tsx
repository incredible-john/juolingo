import { Volume2 } from "lucide-react";
import { useState } from "react";
import { cn } from "@/lib/utils";
import { playTts } from "@/lib/sounds";
import { buildTtsUrl, type TtsVariant } from "@/lib/preloadCache";

interface AudioButtonProps {
	audioUrl?: string | null;
	text?: string | null;
	size?: "sm" | "md";
	className?: string;
	variant?: TtsVariant;
}

export function AudioButton({
	audioUrl,
	text,
	size = "md",
	className,
	variant = "normal",
}: AudioButtonProps) {
	const [playing, setPlaying] = useState(false);

	const handlePlay = () => {
		const audioSrc = text ? buildTtsUrl(text, variant) : audioUrl ? `/api/audio/${audioUrl}` : null;
		if (!audioSrc) return;

		const audio = playTts(audioSrc);
		setPlaying(true);
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
