import { Hono } from "hono";
import subjects from "./routes/subjects";
import lessons from "./routes/lessons";
import admin from "./routes/admin";
import audio from "./routes/audio";
import translate from "./routes/translate";
import progress from "./routes/progress";
import { clerkAuth } from "./middleware/auth";
import type { AppEnv, AppVariables } from "./types";

const app = new Hono<{ Bindings: AppEnv; Variables: AppVariables }>();

app.use("/api/*", clerkAuth);

app.route("/api/subjects", subjects);
app.route("/api/lessons", lessons);
app.route("/api/admin", admin);
app.route("/api/audio", audio);
app.route("/api/translate", translate);
app.route("/api/progress", progress);

export default app;
