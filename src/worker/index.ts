import { Hono } from "hono";
import subjects from "./routes/subjects";
import lessons from "./routes/lessons";
import admin from "./routes/admin";
import audio from "./routes/audio";
import translate from "./routes/translate";

const app = new Hono<{ Bindings: Env }>();

app.route("/api/subjects", subjects);
app.route("/api/lessons", lessons);
app.route("/api/admin", admin);
app.route("/api/audio", audio);
app.route("/api/translate", translate);

export default app;
