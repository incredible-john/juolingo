export interface AppEnv {
	DB: D1Database;
	VOICE_BUCKET: R2Bucket;
	ELEVENLABS_API_KEY: string;
	BAIDU_APP_ID: string;
	BAIDU_APP_KEY: string;
	CLERK_SECRET_KEY: string;
}

export type AppVariables = {
	userId: string | null;
};
