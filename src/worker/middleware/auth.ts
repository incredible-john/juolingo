import { createMiddleware } from "hono/factory";
import { verifyToken } from "@clerk/backend";
import type { AppEnv, AppVariables } from "../types";

/**
 * Verifies the Clerk session JWT from the Authorization header.
 * Sets `userId` in the context — null if the request is unauthenticated.
 */
export const clerkAuth = createMiddleware<{
	Bindings: AppEnv;
	Variables: AppVariables;
}>(async (c, next) => {
	const authHeader = c.req.header("Authorization");
	const token = authHeader?.startsWith("Bearer ") ? authHeader.slice(7) : null;

	if (token) {
		try {
			const payload = await verifyToken(token, {
				secretKey: c.env.CLERK_SECRET_KEY,
			});
			c.set("userId", payload.sub);
		} catch {
			c.set("userId", null);
		}
	} else {
		c.set("userId", null);
	}

	await next();
});
