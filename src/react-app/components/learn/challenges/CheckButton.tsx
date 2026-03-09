interface CheckButtonProps {
	onClick: () => void;
	disabled: boolean;
}

export function CheckButton({ onClick, disabled }: CheckButtonProps) {
	return (
		<div className="px-6 py-4 mt-auto">
			<button
				onClick={onClick}
				disabled={disabled}
				className="w-full py-3 rounded-2xl text-white font-bold text-base border-b-4 border-duo-green-dark bg-duo-green transition-all active:scale-[0.98] active:border-b-2 disabled:opacity-50 disabled:cursor-not-allowed"
			>
				Check
			</button>
		</div>
	);
}
