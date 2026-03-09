const CORRECT_SOUND = "/sounds/correct.mp3";
const INCORRECT_SOUND = "/sounds/incorrect.wav";
const FINISH_SOUND = "/sounds/finish.mp3";

const correctAudio = new Audio(CORRECT_SOUND);
export function playCorrectSound(): void {
	correctAudio.play().catch(() => {});
}

const incorrectAudio = new Audio(INCORRECT_SOUND);
export function playIncorrectSound(): void {
	incorrectAudio.play().catch(() => {});
}

const finishAudio = new Audio(FINISH_SOUND);
export function playFinishSound(): void {
	finishAudio.play().catch(() => {});
}
