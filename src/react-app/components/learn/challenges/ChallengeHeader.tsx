import { useState } from "react";
import { X, Heart } from "lucide-react";
import { useNavigate } from "react-router";
import { cn } from "@/lib/utils";

interface ChallengeHeaderProps {
	progress: number;
	hearts: number;
	maxHearts: number;
}

export function ChallengeHeader({ progress, hearts, maxHearts }: ChallengeHeaderProps) {
	const navigate = useNavigate();
	const [showQuitDialog, setShowQuitDialog] = useState(false);

	return (
		<div className="flex items-center gap-3 px-4 pt-4 pb-2">
			<button
				onClick={() => setShowQuitDialog(true)}
				className="flex h-9 w-9 items-center justify-center rounded-lg text-muted-foreground hover:bg-muted transition-colors"
			>
				<X size={22} strokeWidth={2.5} />
			</button>

			{showQuitDialog && (
				<div className="fixed inset-0 z-50 flex items-end justify-center bg-black/50">
					<div className="w-full max-w-lg bg-white rounded-t-2xl p-6 pb-8 animate-in slide-in-from-bottom duration-200">
						<h2 className="text-xl font-bold text-center mb-2">确定要退出吗？</h2>
						<p className="text-center text-muted-foreground mb-6">你的学习进度将不会被保存</p>
						<div className="flex flex-col gap-3">
							<button
								onClick={() => setShowQuitDialog(false)}
								className="w-full py-3 rounded-2xl bg-duo-green text-white font-bold text-lg border-b-4 border-duo-green-dark active:border-b-0 active:mt-1 transition-all"
							>
								继续学习
							</button>
							<button
								onClick={() => navigate(-1)}
								className="w-full py-3 rounded-2xl bg-duo-gray text-muted-foreground font-bold text-lg border-b-4 border-gray-300 active:border-b-0 active:mt-1 transition-all"
							>
								退出
							</button>
						</div>
					</div>
				</div>
			)}

			<div className="flex-1 h-4 rounded-full bg-duo-gray overflow-hidden">
				<div
					className={cn(
						"h-full rounded-full bg-duo-green transition-all duration-500 ease-out",
						progress > 0 && "min-w-[12px]"
					)}
					style={{ width: `${Math.min(progress * 100, 100)}%` }}
				/>
			</div>

			<div className="flex items-center gap-0.5">
				{Array.from({ length: maxHearts }).map((_, i) => (
					<Heart
						key={i}
						size={22}
						className={cn(
							"transition-all duration-300",
							i < hearts
								? "text-duo-orange fill-duo-orange"
								: "text-duo-gray fill-duo-gray"
						)}
					/>
				))}
			</div>
		</div>
	);
}
