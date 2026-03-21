DROP INDEX `challenge_progress_user_challenge_idx`;--> statement-breakpoint
ALTER TABLE `challenges` ADD `sentence` text;--> statement-breakpoint
ALTER TABLE `challenges` ADD `translation` text;