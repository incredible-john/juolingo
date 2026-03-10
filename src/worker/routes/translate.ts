import { Hono } from "hono";
import type { AppEnv } from "../types";
import { MD5 } from "../utils/md5.js";

const app = new Hono<{ Bindings: AppEnv }>();

interface TranslationResult {
	from?: string;
	to?: string;
	trans_result?: Array<{
		src: string;
		dst: string;
	}>;
	error_code?: string;
	error_msg?: string;
}

app.get("/translate", async (c) => {
	const text = c.req.query("text");
	const from = c.req.query("from") || "en";
	const to = c.req.query("to") || "zh";

	if (!text || !text.trim()) {
		return c.json({ error: "Missing text parameter" }, 400);
	}

	const appid = c.env.BAIDU_APP_ID;
	const key = c.env.BAIDU_APP_KEY;

	if (!appid || !key) {
		return c.json({ error: "Translation service not configured" }, 500);
	}

	const salt = Date.now().toString();
	const sign = MD5(appid + text.trim() + salt + key);

	const url = `https://api.fanyi.baidu.com/api/trans/vip/translate?q=${encodeURIComponent(text.trim())}&appid=${appid}&salt=${salt}&from=${from}&to=${to}&sign=${sign}`;

	try {
		const response = await fetch(url);
		const data = (await response.json()) as TranslationResult;

		if (data.error_code) {
			return c.json({ error: data.error_msg || "Translation failed" }, 500);
		}

		if (!data.trans_result) {
			return c.json({ error: "Translation failed" }, 500);
		}

		const translations = data.trans_result.map((t) => t.dst);
		return c.json({ translations });
	} catch (error) {
		return c.json({ error: "Translation request failed: " + error }, 500);
	}
});

export default app;
