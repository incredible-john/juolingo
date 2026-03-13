-- The Hare and the Tortoise Unit
-- Run: npx wrangler d1 execute juolingo-db --local --file=src/db/seed_hare_tortoise.sql
-- Requires: subject_id=2 (Fairy Tales) must exist. Run seed.sql first if database is empty.
-- Structure: 6 Lessons, 125 Challenges

-- =====================
-- Unit 5: The Hare and the Tortoise
-- =====================
INSERT INTO units (id, subject_id, title, description, "order") VALUES
  (5, 2, 'The Hare and the Tortoise', 'A classic fable about steady progress and humility', 2);

-- 6 Lessons
INSERT INTO lessons (id, unit_id, title, "order") VALUES
  (13, 5, 'Part 1', 0),
  (14, 5, 'Part 2', 1),
  (15, 5, 'Part 3', 2),
  (16, 5, 'Part 1 Practice', 3),
  (17, 5, 'Part 2 Practice', 4),
  (18, 5, 'Part 3 Practice', 5);

-- ============================================================
-- Lesson 13 — Part 1: Vocabulary (21) + Matching (5) + Story (8)
-- ============================================================

-- Part 1 Vocabulary (challenges 109-129)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (109, 13, 'SELECT_TRANSLATION', 'once', 0),
  (110, 13, 'SELECT_TRANSLATION', 'rabbit', 1),
  (111, 13, 'SELECT_TRANSLATION', 'always', 2),
  (112, 13, 'SELECT_TRANSLATION', 'brag', 3),
  (113, 13, 'SELECT_TRANSLATION', 'about', 4),
  (114, 13, 'SELECT_TRANSLATION', 'fast', 5),
  (115, 13, 'SELECT_TRANSLATION', 'get out', 6),
  (116, 13, 'SELECT_TRANSLATION', 'best', 7),
  (117, 13, 'SELECT_TRANSLATION', 'say', 8),
  (118, 13, 'SELECT_TRANSLATION', 'tease', 9),
  (119, 13, 'SELECT_TRANSLATION', 'tortoise', 10),
  (120, 13, 'SELECT_TRANSLATION', 'slow', 11),
  (121, 13, 'SELECT_TRANSLATION', 'fastest', 12),
  (122, 13, 'SELECT_TRANSLATION', 'runner', 13),
  (123, 13, 'SELECT_TRANSLATION', 'woods', 14),
  (124, 13, 'SELECT_TRANSLATION', 'challenge', 15),
  (125, 13, 'SELECT_TRANSLATION', 'race', 16),
  (126, 13, 'SELECT_TRANSLATION', 'tree', 17),
  (127, 13, 'SELECT_TRANSLATION', 'hill', 18),
  (128, 13, 'SELECT_TRANSLATION', 'first', 19),
  (129, 13, 'SELECT_TRANSLATION', 'said', 20);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (109, '从前；有一次', 1, 0), (109, '明天', 0, 1), (109, '昨天', 0, 2),
  (110, '兔子', 1, 0), (110, '乌龟', 0, 1), (110, '老虎', 0, 2),
  (111, '总是', 1, 0), (111, '从不', 0, 1), (111, '有时', 0, 2),
  (112, '炫耀', 1, 0), (112, '谦虚', 0, 1), (112, '害羞', 0, 2),
  (113, '关于', 1, 0), (113, '除了', 0, 1), (113, '为了', 0, 2),
  (114, '快', 1, 0), (114, '慢', 0, 1), (114, '高', 0, 2),
  (115, '让开', 1, 0), (115, '进来', 0, 1), (115, '坐下', 0, 2),
  (116, '最好', 1, 0), (116, '最差', 0, 1), (116, '一般', 0, 2),
  (117, '说', 1, 0), (117, '听', 0, 1), (117, '看', 0, 2),
  (118, '嘲笑', 1, 0), (118, '表扬', 0, 1), (118, '帮助', 0, 2),
  (119, '乌龟', 1, 0), (119, '兔子', 0, 1), (119, '狮子', 0, 2),
  (120, '慢', 1, 0), (120, '快', 0, 1), (120, '高', 0, 2),
  (121, '最快的', 1, 0), (121, '最慢的', 0, 1), (121, '最高的', 0, 2),
  (122, '跑步者', 1, 0), (122, '游泳者', 0, 1), (122, '飞行者', 0, 2),
  (123, '树林', 1, 0), (123, '海洋', 0, 1), (123, '沙漠', 0, 2),
  (124, '挑战', 1, 0), (124, '放弃', 0, 1), (124, '休息', 0, 2),
  (125, '赛跑', 1, 0), (125, '散步', 0, 1), (125, '睡觉', 0, 2),
  (126, '树', 1, 0), (126, '花', 0, 1), (126, '草', 0, 2),
  (127, '山丘', 1, 0), (127, '河流', 0, 1), (127, '天空', 0, 2),
  (128, '第一', 1, 0), (128, '最后', 0, 1), (128, '中间', 0, 2),
  (129, '说（过去式）', 1, 0), (129, '跑（过去式）', 0, 1), (129, '睡（过去式）', 0, 2);

-- Part 1 Matching (challenges 130-134)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (130, 13, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 21),
  (131, 13, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 22),
  (132, 13, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 23),
  (133, 13, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 24),
  (134, 13, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 25);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (130, 'once', 1, 0), (130, '从前；有一次', 1, 1),
  (130, 'rabbit', 1, 2), (130, '兔子', 1, 3),
  (130, 'always', 1, 4), (130, '总是', 1, 5),
  (130, 'brag', 1, 6), (130, '炫耀', 1, 7),
  (130, 'about', 1, 8), (130, '关于', 1, 9),
  (131, 'fast', 1, 0), (131, '快', 1, 1),
  (131, 'get out', 1, 2), (131, '让开', 1, 3),
  (131, 'best', 1, 4), (131, '最好', 1, 5),
  (131, 'say', 1, 6), (131, '说', 1, 7),
  (131, 'tease', 1, 8), (131, '嘲笑', 1, 9),
  (132, 'tortoise', 1, 0), (132, '乌龟', 1, 1),
  (132, 'slow', 1, 2), (132, '慢', 1, 3),
  (132, 'fastest', 1, 4), (132, '最快的', 1, 5),
  (132, 'runner', 1, 6), (132, '跑步者', 1, 7),
  (132, 'woods', 1, 8), (132, '树林', 1, 9),
  (133, 'challenge', 1, 0), (133, '挑战', 1, 1),
  (133, 'race', 1, 2), (133, '赛跑', 1, 3),
  (133, 'tree', 1, 4), (133, '树', 1, 5),
  (133, 'hill', 1, 6), (133, '山丘', 1, 7),
  (133, 'first', 1, 8), (133, '第一', 1, 9),
  (134, 'said', 1, 0), (134, '说（过去式）', 1, 1),
  (134, 'once', 1, 2), (134, '从前；有一次', 1, 3),
  (134, 'rabbit', 1, 4), (134, '兔子', 1, 5),
  (134, 'tortoise', 1, 6), (134, '乌龟', 1, 7),
  (134, 'slow', 1, 8), (134, '慢', 1, 9);

-- Part 1 Story Sentences (challenges 189-196)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (189, 13, 'TRANSLATE', 'There once was a rabbit who always bragged about how fast he was.', 26),
  (190, 13, 'TRANSLATE', 'Get out of the way.', 27),
  (191, 13, 'TRANSLATE', 'I''m the best, he would say.', 28),
  (192, 13, 'TRANSLATE', 'He always teased the tortoise for being slow.', 29),
  (193, 13, 'TRANSLATE', 'I''m the fastest runner in the woods.', 30),
  (194, 13, 'TRANSLATE', 'Why are you slow?', 31),
  (195, 13, 'TRANSLATE', 'One day, the tortoise challenged the rabbit to a race.', 32),
  (196, 13, 'TRANSLATE', 'Let''s see who reaches the tree on the hill first, he said.', 33);

-- Challenge 189: There once was a rabbit who always bragged about how fast he was.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (189, '从前', 1, 0), (189, '有一只', 1, 1), (189, '兔子', 1, 2), (189, '他', 1, 3),
  (189, '总是', 1, 4), (189, '炫耀', 1, 5), (189, '自己', 1, 6), (189, '跑得', 1, 7), (189, '多快', 1, 8),
  (189, '乌龟', 0, 9), (189, '赛跑', 0, 10), (189, '赢了', 0, 11);

-- Challenge 190: Get out of the way.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (190, '让开', 1, 0),
  (190, '进来', 0, 1), (190, '赛跑', 0, 2);

-- Challenge 191: I'm the best, he would say.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (191, '我', 1, 0), (191, '最棒', 1, 1), (191, '他', 1, 2), (191, '总', 1, 3), (191, '这么说', 1, 4),
  (191, '乌龟', 0, 5), (191, '赛跑', 0, 6);

-- Challenge 192: He always teased the tortoise for being slow.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (192, '他', 1, 0), (192, '总是', 1, 1), (192, '嘲笑', 1, 2), (192, '乌龟', 1, 3), (192, '跑得', 1, 4), (192, '慢', 1, 5),
  (192, '野兔', 0, 6), (192, '赢了', 0, 7), (192, '炫耀', 0, 8);

-- Challenge 193: I'm the fastest runner in the woods.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (193, '我是', 1, 0), (193, '树林里', 1, 1), (193, '最快的', 1, 2), (193, '跑步者', 1, 3),
  (193, '乌龟', 0, 4), (193, '慢', 0, 5), (193, '赛跑', 0, 6);

-- Challenge 194: Why are you slow?
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (194, '你为什么', 1, 0), (194, '这么慢', 1, 1),
  (194, '快', 0, 2), (194, '赢了', 0, 3), (194, '赛跑', 0, 4);

-- Challenge 195: One day, the tortoise challenged the rabbit to a race.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (195, '有一天', 1, 0), (195, '乌龟', 1, 1), (195, '向', 1, 2), (195, '兔子', 1, 3),
  (195, '发起', 1, 4), (195, '赛跑', 1, 5), (195, '挑战', 1, 6),
  (195, '赢了', 0, 7), (195, '睡觉', 0, 8);

-- Challenge 196: Let's see who reaches the tree on the hill first, he said.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (196, '我们', 1, 0), (196, '看看', 1, 1), (196, '谁', 1, 2), (196, '先', 1, 3),
  (196, '到', 1, 4), (196, '山丘上', 1, 5), (196, '的', 1, 6), (196, '树', 1, 7),
  (196, '那里', 1, 8), (196, '他说', 1, 9),
  (196, '赢了', 0, 10), (196, '炫耀', 0, 11), (196, '终点', 0, 12);

-- ============================================================
-- Lesson 14 — Part 2: Vocabulary (21) + Matching (5) + Story (6)
-- ============================================================

-- Part 2 Vocabulary (challenges 135-155)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (135, 14, 'SELECT_TRANSLATION', 'hare', 0),
  (136, 14, 'SELECT_TRANSLATION', 'start', 1),
  (137, 14, 'SELECT_TRANSLATION', 'running', 2),
  (138, 14, 'SELECT_TRANSLATION', 'faster', 3),
  (139, 14, 'SELECT_TRANSLATION', 'at one point', 4),
  (140, 14, 'SELECT_TRANSLATION', 'look back', 5),
  (141, 14, 'SELECT_TRANSLATION', 'couldn''t', 6),
  (142, 14, 'SELECT_TRANSLATION', 'even', 7),
  (143, 14, 'SELECT_TRANSLATION', 'see', 8),
  (144, 14, 'SELECT_TRANSLATION', 'thought', 9),
  (145, 14, 'SELECT_TRANSLATION', 'himself', 10),
  (146, 14, 'SELECT_TRANSLATION', 'sure', 11),
  (147, 14, 'SELECT_TRANSLATION', 'win', 12),
  (148, 14, 'SELECT_TRANSLATION', 'this', 13),
  (149, 14, 'SELECT_TRANSLATION', 'why', 14),
  (150, 14, 'SELECT_TRANSLATION', 'should', 15),
  (151, 14, 'SELECT_TRANSLATION', 'hurry', 16),
  (152, 14, 'SELECT_TRANSLATION', 'would rather', 17),
  (153, 14, 'SELECT_TRANSLATION', 'take a nap', 18),
  (154, 14, 'SELECT_TRANSLATION', 'here', 19),
  (155, 14, 'SELECT_TRANSLATION', 'for a while', 20);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (135, '野兔', 1, 0), (135, '乌龟', 0, 1), (135, '老鼠', 0, 2),
  (136, '开始', 1, 0), (136, '结束', 0, 1), (136, '休息', 0, 2),
  (137, '跑步', 1, 0), (137, '走路', 0, 1), (137, '睡觉', 0, 2),
  (138, '更快', 1, 0), (138, '更慢', 0, 1), (138, '更高', 0, 2),
  (139, '一度', 1, 0), (139, '从不', 0, 1), (139, '一直', 0, 2),
  (140, '回头看', 1, 0), (140, '向前看', 0, 1), (140, '闭眼', 0, 2),
  (141, '不能', 1, 0), (141, '能够', 0, 1), (141, '必须', 0, 2),
  (142, '甚至', 1, 0), (142, '仅仅', 0, 1), (142, '也许', 0, 2),
  (143, '看见', 1, 0), (143, '听见', 0, 1), (143, '闻到', 0, 2),
  (144, '想（过去式）', 1, 0), (144, '跑（过去式）', 0, 1), (144, '说（过去式）', 0, 2),
  (145, '他自己', 1, 0), (145, '她自己', 0, 1), (145, '他们', 0, 2),
  (146, '肯定', 1, 0), (146, '怀疑', 0, 1), (146, '害怕', 0, 2),
  (147, '赢', 1, 0), (147, '输', 0, 1), (147, '平', 0, 2),
  (148, '这个', 1, 0), (148, '那个', 0, 1), (148, '哪个', 0, 2),
  (149, '为什么', 1, 0), (149, '什么', 0, 1), (149, '哪里', 0, 2),
  (150, '应该', 1, 0), (150, '可能', 0, 1), (150, '必须', 0, 2),
  (151, '赶紧', 1, 0), (151, '慢慢', 0, 1), (151, '等等', 0, 2),
  (152, '宁愿', 1, 0), (152, '不想', 0, 1), (152, '必须', 0, 2),
  (153, '睡一觉', 1, 0), (153, '跑一圈', 0, 1), (153, '吃一口', 0, 2),
  (154, '这里', 1, 0), (154, '那里', 0, 1), (154, '哪里', 0, 2),
  (155, '一会儿', 1, 0), (155, '永远', 0, 1), (155, '从不', 0, 2);

-- Part 2 Matching (challenges 156-160)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (156, 14, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 21),
  (157, 14, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 22),
  (158, 14, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 23),
  (159, 14, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 24),
  (160, 14, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 25);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (156, 'hare', 1, 0), (156, '野兔', 1, 1),
  (156, 'start', 1, 2), (156, '开始', 1, 3),
  (156, 'running', 1, 4), (156, '跑步', 1, 5),
  (156, 'faster', 1, 6), (156, '更快', 1, 7),
  (156, 'at one point', 1, 8), (156, '一度', 1, 9),
  (157, 'look back', 1, 0), (157, '回头看', 1, 1),
  (157, 'couldn''t', 1, 2), (157, '不能', 1, 3),
  (157, 'even', 1, 4), (157, '甚至', 1, 5),
  (157, 'see', 1, 6), (157, '看见', 1, 7),
  (157, 'thought', 1, 8), (157, '想（过去式）', 1, 9),
  (158, 'himself', 1, 0), (158, '他自己', 1, 1),
  (158, 'sure', 1, 2), (158, '肯定', 1, 3),
  (158, 'win', 1, 4), (158, '赢', 1, 5),
  (158, 'this', 1, 6), (158, '这个', 1, 7),
  (158, 'why', 1, 8), (158, '为什么', 1, 9),
  (159, 'should', 1, 0), (159, '应该', 1, 1),
  (159, 'hurry', 1, 2), (159, '赶紧', 1, 3),
  (159, 'would rather', 1, 4), (159, '宁愿', 1, 5),
  (159, 'take a nap', 1, 6), (159, '睡一觉', 1, 7),
  (159, 'here', 1, 8), (159, '这里', 1, 9),
  (160, 'for a while', 1, 0), (160, '一会儿', 1, 1),
  (160, 'hare', 1, 2), (160, '野兔', 1, 3),
  (160, 'start', 1, 4), (160, '开始', 1, 5),
  (160, 'win', 1, 6), (160, '赢', 1, 7),
  (160, 'faster', 1, 8), (160, '更快', 1, 9);

-- Part 2 Story Sentences (challenges 197-202)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (197, 14, 'TRANSLATE', 'The tortoise and the hare stood at the starting line for the race.', 26),
  (198, 14, 'TRANSLATE', 'Ready, set, go, said the hare, and they started running.', 27),
  (199, 14, 'TRANSLATE', 'The hare was much faster than the tortoise.', 28),
  (200, 14, 'TRANSLATE', 'At one point, when the hare looked back, he couldn''t even see the tortoise.', 29),
  (201, 14, 'TRANSLATE', 'The hare thought to himself I''m sure I''ll win this race, why should I hurry?', 30),
  (202, 14, 'TRANSLATE', 'I would rather take a nap here for a while.', 31);

-- Challenge 197: The tortoise and the hare stood at the starting line for the race.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (197, '乌龟', 1, 0), (197, '和', 1, 1), (197, '野兔', 1, 2), (197, '站', 1, 3),
  (197, '在', 1, 4), (197, '赛跑', 1, 5), (197, '起跑线', 1, 6), (197, '上', 1, 7),
  (197, '赢了', 0, 8), (197, '终点', 0, 9);

-- Challenge 198: Ready, set, go, said the hare, and they started running.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (198, '各就各位', 1, 0), (198, '预备', 1, 1), (198, '跑', 1, 2), (198, '野兔', 1, 3),
  (198, '说', 1, 4), (198, '他们', 1, 5), (198, '开始', 1, 6), (198, '跑了', 1, 7),
  (198, '乌龟', 0, 8), (198, '挑战', 0, 9), (198, '终点', 0, 10);

-- Challenge 199: The hare was much faster than the tortoise.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (199, '野兔', 1, 0), (199, '比', 1, 1), (199, '乌龟', 1, 2), (199, '快', 1, 3), (199, '多了', 1, 4),
  (199, '慢', 0, 5), (199, '赢了', 0, 6);

-- Challenge 200: At one point, when the hare looked back, he couldn't even see the tortoise.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (200, '一度', 1, 0), (200, '野兔', 1, 1), (200, '回头', 1, 2), (200, '看时', 1, 3),
  (200, '连', 1, 4), (200, '乌龟', 1, 5), (200, '都', 1, 6), (200, '看不见', 1, 7),
  (200, '挑战', 0, 8), (200, '炫耀', 0, 9), (200, '赢了', 0, 10);

-- Challenge 201: The hare thought to himself I'm sure I'll win this race, why should I hurry?
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (201, '野兔', 1, 0), (201, '心想', 1, 1), (201, '我', 1, 2), (201, '肯定', 1, 3),
  (201, '赢', 1, 4), (201, '何必', 1, 5), (201, '着急', 1, 6),
  (201, '乌龟', 0, 7), (201, '炫耀', 0, 8), (201, '终点', 0, 9);

-- Challenge 202: I would rather take a nap here for a while.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (202, '我', 1, 0), (202, '宁愿', 1, 1), (202, '在这儿', 1, 2), (202, '睡一觉', 1, 3),
  (202, '赢了', 0, 4), (202, '赶紧', 0, 5), (202, '挑战', 0, 6);

-- ============================================================
-- Lesson 15 — Part 3: Vocabulary (23) + Matching (5) + Story (8)
-- ============================================================

-- Part 3 Vocabulary (challenges 161-183)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (161, 15, 'SELECT_TRANSLATION', 'while', 0),
  (162, 15, 'SELECT_TRANSLATION', 'sleeping', 1),
  (163, 15, 'SELECT_TRANSLATION', 'kept on', 2),
  (164, 15, 'SELECT_TRANSLATION', 'going', 3),
  (165, 15, 'SELECT_TRANSLATION', 'after', 4),
  (166, 15, 'SELECT_TRANSLATION', 'a while', 5),
  (167, 15, 'SELECT_TRANSLATION', 'woke up', 6),
  (168, 15, 'SELECT_TRANSLATION', 'saw', 7),
  (169, 15, 'SELECT_TRANSLATION', 'reach', 8),
  (170, 15, 'SELECT_TRANSLATION', 'finish line', 9),
  (171, 15, 'SELECT_TRANSLATION', 'rush', 10),
  (172, 15, 'SELECT_TRANSLATION', 'toward', 11),
  (173, 15, 'SELECT_TRANSLATION', 'as fast as he could', 12),
  (174, 15, 'SELECT_TRANSLATION', 'too late', 13),
  (175, 15, 'SELECT_TRANSLATION', 'already', 14),
  (176, 15, 'SELECT_TRANSLATION', 'crossed the line', 15),
  (177, 15, 'SELECT_TRANSLATION', 'winner', 16),
  (178, 15, 'SELECT_TRANSLATION', 'slow', 17),
  (179, 15, 'SELECT_TRANSLATION', 'but', 18),
  (180, 15, 'SELECT_TRANSLATION', 'steady', 19),
  (181, 15, 'SELECT_TRANSLATION', 'win', 20),
  (182, 15, 'SELECT_TRANSLATION', 'told', 21),
  (183, 15, 'SELECT_TRANSLATION', 'sobbed in shame', 22);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (161, '当……的时候', 1, 0), (161, '在……之前', 0, 1), (161, '在……之后', 0, 2),
  (162, '睡觉', 1, 0), (162, '跑步', 0, 1), (162, '说话', 0, 2),
  (163, '继续', 1, 0), (163, '停止', 0, 1), (163, '放弃', 0, 2),
  (164, '走', 1, 0), (164, '停', 0, 1), (164, '睡', 0, 2),
  (165, '之后', 1, 0), (165, '之前', 0, 1), (165, '之间', 0, 2),
  (166, '一会儿', 1, 0), (166, '很久', 0, 1), (166, '瞬间', 0, 2),
  (167, '醒了', 1, 0), (167, '睡了', 0, 1), (167, '跑了', 0, 2),
  (168, '看见（过去式）', 1, 0), (168, '想（过去式）', 0, 1), (168, '说（过去式）', 0, 2),
  (169, '到达', 1, 0), (169, '离开', 0, 1), (169, '经过', 0, 2),
  (170, '终点线', 1, 0), (170, '起点', 0, 1), (170, '中途', 0, 2),
  (171, '冲', 1, 0), (171, '慢走', 0, 1), (171, '停下', 0, 2),
  (172, '朝……方向', 1, 0), (172, '远离', 0, 1), (172, '绕过', 0, 2),
  (173, '尽快', 1, 0), (173, '慢慢', 0, 1), (173, '随便', 0, 2),
  (174, '太晚了', 1, 0), (174, '还早', 0, 1), (174, '刚好', 0, 2),
  (175, '已经', 1, 0), (175, '还没', 0, 1), (175, '正在', 0, 2),
  (176, '越过终点线', 1, 0), (176, '跌倒', 0, 1), (176, '放弃', 0, 2),
  (177, '获胜者', 1, 0), (177, '失败者', 0, 1), (177, '观众', 0, 2),
  (178, '慢', 1, 0), (178, '快', 0, 1), (178, '高', 0, 2),
  (179, '但是', 1, 0), (179, '和', 0, 1), (179, '或', 0, 2),
  (180, '稳健的', 1, 0), (180, '摇晃的', 0, 1), (180, '急躁的', 0, 2),
  (181, '赢', 1, 0), (181, '输', 0, 1), (181, '平', 0, 2),
  (182, '告诉（过去式）', 1, 0), (182, '跑（过去式）', 0, 1), (182, '睡（过去式）', 0, 2),
  (183, '羞愧地哭泣', 1, 0), (183, '开心地笑', 0, 1), (183, '生气地喊', 0, 2);

-- Part 3 Matching (challenges 184-188)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (184, 15, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 23),
  (185, 15, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 24),
  (186, 15, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 25),
  (187, 15, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 26),
  (188, 15, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 27);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (184, 'while', 1, 0), (184, '当……的时候', 1, 1),
  (184, 'sleeping', 1, 2), (184, '睡觉', 1, 3),
  (184, 'kept on', 1, 4), (184, '继续', 1, 5),
  (184, 'going', 1, 6), (184, '走', 1, 7),
  (184, 'after', 1, 8), (184, '之后', 1, 9),
  (185, 'a while', 1, 0), (185, '一会儿', 1, 1),
  (185, 'woke up', 1, 2), (185, '醒了', 1, 3),
  (185, 'saw', 1, 4), (185, '看见（过去式）', 1, 5),
  (185, 'reach', 1, 6), (185, '到达', 1, 7),
  (185, 'finish line', 1, 8), (185, '终点线', 1, 9),
  (186, 'rush', 1, 0), (186, '冲', 1, 1),
  (186, 'toward', 1, 2), (186, '朝……方向', 1, 3),
  (186, 'as fast as he could', 1, 4), (186, '尽快', 1, 5),
  (186, 'too late', 1, 6), (186, '太晚了', 1, 7),
  (186, 'already', 1, 8), (186, '已经', 1, 9),
  (187, 'crossed the line', 1, 0), (187, '越过终点线', 1, 1),
  (187, 'winner', 1, 2), (187, '获胜者', 1, 3),
  (187, 'steady', 1, 4), (187, '稳健的', 1, 5),
  (187, 'win', 1, 6), (187, '赢', 1, 7),
  (187, 'told', 1, 8), (187, '告诉（过去式）', 1, 9),
  (188, 'sobbed in shame', 1, 0), (188, '羞愧地哭泣', 1, 1),
  (188, 'slow', 1, 2), (188, '慢', 1, 3),
  (188, 'but', 1, 4), (188, '但是', 1, 5),
  (188, 'winner', 1, 6), (188, '获胜者', 1, 7),
  (188, 'told', 1, 8), (188, '告诉（过去式）', 1, 9);

-- Part 3 Story Sentences (challenges 203-210)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (203, 15, 'TRANSLATE', 'While the hare was sleeping, the tortoise kept on going.', 28),
  (204, 15, 'TRANSLATE', 'After a while, when the hare woke up, he saw the tortoise reaching the finish line.', 29),
  (205, 15, 'TRANSLATE', 'The hare rushed towards the finish line as fast as he could, but it was too late.', 30),
  (206, 15, 'TRANSLATE', 'The tortoise had already crossed the line.', 31),
  (207, 15, 'TRANSLATE', 'The tortoise was the winner.', 32),
  (208, 15, 'TRANSLATE', 'Being slow but steady wins the race.', 33),
  (209, 15, 'TRANSLATE', 'It''s not over until it''s over, the tortoise told the hare.', 34),
  (210, 15, 'TRANSLATE', 'The hare sobbed in shame.', 35);

-- Challenge 203: While the hare was sleeping, the tortoise kept on going.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (203, '野兔', 1, 0), (203, '睡觉', 1, 1), (203, '时', 1, 2), (203, '乌龟', 1, 3),
  (203, '继续', 1, 4), (203, '前进', 1, 5),
  (203, '炫耀', 0, 6), (203, '挑战', 0, 7);

-- Challenge 204: After a while, when the hare woke up, he saw the tortoise reaching the finish line.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (204, '过了一会儿', 1, 0), (204, '野兔', 1, 1), (204, '醒来', 1, 2), (204, '看见', 1, 3),
  (204, '乌龟', 1, 4), (204, '快到', 1, 5), (204, '终点线了', 1, 6),
  (204, '炫耀', 0, 7), (204, '赢了', 0, 8), (204, '挑战', 0, 9);

-- Challenge 205: The hare rushed towards the finish line as fast as he could, but it was too late.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (205, '野兔', 1, 0), (205, '拼命', 1, 1), (205, '向', 1, 2), (205, '终点', 1, 3),
  (205, '冲去', 1, 4), (205, '但', 1, 5), (205, '已经', 1, 6), (205, '太晚了', 1, 7),
  (205, '乌龟', 0, 8), (205, '炫耀', 0, 9), (205, '赢了', 0, 10);

-- Challenge 206: The tortoise had already crossed the line.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (206, '乌龟', 1, 0), (206, '已经', 1, 1), (206, '越过', 1, 2), (206, '终点线', 1, 3),
  (206, '野兔', 0, 4), (206, '炫耀', 0, 5), (206, '挑战', 0, 6);

-- Challenge 207: The tortoise was the winner.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (207, '乌龟', 1, 0), (207, '是', 1, 1), (207, '胜利者', 1, 2),
  (207, '野兔', 0, 3), (207, '挑战', 0, 4), (207, '炫耀', 0, 5);

-- Challenge 208: Being slow but steady wins the race.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (208, '慢', 1, 0), (208, '但', 1, 1), (208, '稳', 1, 2), (208, '才能', 1, 3), (208, '赢', 1, 4),
  (208, '快', 0, 5), (208, '野兔', 0, 6), (208, '炫耀', 0, 7);

-- Challenge 209: It's not over until it's over, the tortoise told the hare.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (209, '没到', 1, 0), (209, '最后', 1, 1), (209, '不算', 1, 2), (209, '结束', 1, 3),
  (209, '乌龟', 1, 4), (209, '对', 1, 5), (209, '野兔', 1, 6), (209, '说', 1, 7),
  (209, '赢了', 0, 8), (209, '挑战', 0, 9), (209, '炫耀', 0, 10);

-- Challenge 210: The hare sobbed in shame.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (210, '野兔', 1, 0), (210, '羞愧地', 1, 1), (210, '哭了', 1, 2),
  (210, '乌龟', 0, 3), (210, '炫耀', 0, 4), (210, '赢了', 0, 5);

-- ============================================================
-- Lesson 16 — Part 1 Practice: Fill Blank (7) + New Sentences (4)
-- ============================================================

-- Part 1 Fill Blank (challenges 211-217)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (211, 16, 'FILL_BLANK', 'The ___ is much faster than the tortoise.', 0),
  (212, 16, 'FILL_BLANK', 'Being ___ but steady wins the race.', 1),
  (213, 16, 'FILL_BLANK', 'The ___ always bragged about being fast.', 2),
  (214, 16, 'FILL_BLANK', 'The tortoise ___ the rabbit to a race.', 3),
  (215, 16, 'FILL_BLANK', 'Who will reach the ___ on the hill first?', 4),
  (216, 16, 'FILL_BLANK', 'The tortoise and the hare stood at the ___ line.', 5),
  (217, 16, 'FILL_BLANK', 'They ___ running when the hare said go.', 6);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (211, 'hare', 1, 0), (211, 'hill', 0, 1), (211, 'woods', 0, 2),
  (212, 'slow', 1, 0), (212, 'hill', 0, 1), (212, 'winner', 0, 2),
  (213, 'rabbit', 1, 0), (213, 'hill', 0, 1), (213, 'woods', 0, 2),
  (214, 'challenged', 1, 0), (214, 'hill', 0, 1), (214, 'winner', 0, 2),
  (215, 'tree', 1, 0), (215, 'steadily', 0, 1), (215, 'toward', 0, 2),
  (216, 'starting', 1, 0), (216, 'hill', 0, 1), (216, 'winner', 0, 2),
  (217, 'started', 1, 0), (217, 'hill', 0, 1), (217, 'winner', 0, 2);

-- Part 1 New Sentences (challenges 231-234)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (231, 16, 'TRANSLATE', 'There is a tree on the hill.', 7),
  (232, 16, 'TRANSLATE', 'Don''t brag about winning before the race is over.', 8),
  (233, 16, 'TRANSLATE', 'Nobody likes to be teased for being slow.', 9),
  (234, 16, 'TRANSLATE', 'The rabbit and the tortoise met in the woods one day.', 10);

-- Challenge 231: There is a tree on the hill.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (231, '山丘', 1, 0), (231, '上', 1, 1), (231, '有', 1, 2), (231, '一棵', 1, 3), (231, '树', 1, 4),
  (231, '兔子', 0, 5), (231, '炫耀', 0, 6);

-- Challenge 232: Don't brag about winning before the race is over.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (232, '别', 1, 0), (232, '在', 1, 1), (232, '赛跑', 1, 2), (232, '结束前', 1, 3),
  (232, '炫耀', 1, 4), (232, '你', 1, 5), (232, '赢了', 1, 6),
  (232, '乌龟', 0, 7), (232, '挑战', 0, 8);

-- Challenge 233: Nobody likes to be teased for being slow.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (233, '没人', 1, 0), (233, '喜欢', 1, 1), (233, '因为', 1, 2), (233, '慢', 1, 3),
  (233, '被', 1, 4), (233, '嘲笑', 1, 5),
  (233, '兔子', 0, 6), (233, '赛跑', 0, 7);

-- Challenge 234: The rabbit and the tortoise met in the woods one day.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (234, '兔子', 1, 0), (234, '和', 1, 1), (234, '乌龟', 1, 2), (234, '有一天', 1, 3),
  (234, '在', 1, 4), (234, '树林里', 1, 5), (234, '相遇', 1, 6),
  (234, '野兔', 0, 7), (234, '炫耀', 0, 8);

-- ============================================================
-- Lesson 17 — Part 2 Practice: Fill Blank (7) + New Sentences (4)
-- ============================================================

-- Part 2 Fill Blank (challenges 218-224)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (218, 17, 'FILL_BLANK', 'At one point the hare ___ back and couldn''t see the tortoise.', 0),
  (219, 17, 'FILL_BLANK', 'The hare thought to himself: I''m ___ I''ll win.', 1),
  (220, 17, 'FILL_BLANK', 'The hare would rather ___ a nap than keep running.', 2),
  (221, 17, 'FILL_BLANK', '___ the hare was sleeping, the tortoise kept on going.', 3),
  (222, 17, 'FILL_BLANK', 'After a ___, the hare woke up.', 4),
  (223, 17, 'FILL_BLANK', 'The hare ___ up and saw the tortoise at the finish line.', 5),
  (224, 17, 'FILL_BLANK', 'The tortoise had ___ crossed the line.', 6);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (218, 'looked', 1, 0), (218, 'hill', 0, 1), (218, 'winner', 0, 2),
  (219, 'sure', 1, 0), (219, 'hill', 0, 1), (219, 'toward', 0, 2),
  (220, 'take', 1, 0), (220, 'hill', 0, 1), (220, 'winner', 0, 2),
  (221, 'While', 1, 0), (221, 'Hill', 0, 1), (221, 'Winner', 0, 2),
  (222, 'while', 1, 0), (222, 'toward', 0, 1), (222, 'steadily', 0, 2),
  (223, 'woke', 1, 0), (223, 'hill', 0, 1), (223, 'winner', 0, 2),
  (224, 'already', 1, 0), (224, 'hill', 0, 1), (224, 'winner', 0, 2);

-- Part 2 New Sentences (challenges 235-238)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (235, 17, 'TRANSLATE', 'The hare started running as soon as he heard go.', 7),
  (236, 17, 'TRANSLATE', 'He would rather take a nap than finish his homework.', 8),
  (237, 17, 'TRANSLATE', 'He looked back and saw his friends behind him.', 9),
  (238, 17, 'TRANSLATE', 'The hare was faster, but the tortoise never gave up.', 10);

-- Challenge 235: The hare started running as soon as he heard go.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (235, '野兔', 1, 0), (235, '一听到', 1, 1), (235, '跑', 1, 2), (235, '就', 1, 3),
  (235, '开始', 1, 4), (235, '跑了', 1, 5),
  (235, '乌龟', 0, 6), (235, '终点线', 0, 7);

-- Challenge 236: He would rather take a nap than finish his homework.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (236, '他', 1, 0), (236, '宁愿', 1, 1), (236, '睡一觉', 1, 2), (236, '也', 1, 3),
  (236, '不想', 1, 4), (236, '做完', 1, 5), (236, '作业', 1, 6),
  (236, '兔子', 0, 7), (236, '赛跑', 0, 8);

-- Challenge 237: He looked back and saw his friends behind him.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (237, '他', 1, 0), (237, '回头', 1, 1), (237, '看', 1, 2), (237, '看见', 1, 3),
  (237, '朋友们', 1, 4), (237, '在', 1, 5), (237, '后面', 1, 6),
  (237, '乌龟', 0, 7), (237, '赛跑', 0, 8);

-- Challenge 238: The hare was faster, but the tortoise never gave up.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (238, '野兔', 1, 0), (238, '跑得', 1, 1), (238, '更快', 1, 2), (238, '但', 1, 3),
  (238, '乌龟', 1, 4), (238, '从', 1, 5), (238, '不', 1, 6), (238, '放弃', 1, 7),
  (238, '兔子', 0, 8), (238, '炫耀', 0, 9);

-- ============================================================
-- Lesson 18 — Part 3 Practice: Fill Blank (6) + New Sentences (4)
-- ============================================================

-- Part 3 Fill Blank (challenges 225-230)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (225, 18, 'FILL_BLANK', 'The hare rushed ___ the finish line.', 0),
  (226, 18, 'FILL_BLANK', 'The tortoise was the ___.', 1),
  (227, 18, 'FILL_BLANK', '___ slow but steady wins the race.', 2),
  (228, 18, 'FILL_BLANK', 'The hare ___ in shame after losing.', 3),
  (229, 18, 'FILL_BLANK', 'The ___ kept on going while the hare slept.', 4),
  (230, 18, 'FILL_BLANK', 'The hare ran as ___ as he could toward the finish line.', 5);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (225, 'toward', 1, 0), (225, 'hill', 0, 1), (225, 'winner', 0, 2),
  (226, 'winner', 1, 0), (226, 'toward', 0, 1), (226, 'already', 0, 2),
  (227, 'Being', 1, 0), (227, 'Hill', 0, 1), (227, 'Winner', 0, 2),
  (228, 'sobbed', 1, 0), (228, 'toward', 0, 1), (228, 'winner', 0, 2),
  (229, 'tortoise', 1, 0), (229, 'toward', 0, 1), (229, 'already', 0, 2),
  (230, 'fast', 1, 0), (230, 'toward', 0, 1), (230, 'winner', 0, 2);

-- Part 3 New Sentences (challenges 239-242)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (239, 18, 'TRANSLATE', 'While I was sleeping, my brother kept on studying.', 6),
  (240, 18, 'TRANSLATE', 'He woke up and saw the finish line was still far away.', 7),
  (241, 18, 'TRANSLATE', 'The true winner is the one who never stops trying.', 8),
  (242, 18, 'TRANSLATE', 'He sobbed in shame when he lost the game.', 9);

-- Challenge 239: While I was sleeping, my brother kept on studying.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (239, '我', 1, 0), (239, '睡觉', 1, 1), (239, '时', 1, 2), (239, '弟弟', 1, 3),
  (239, '继续', 1, 4), (239, '学习', 1, 5),
  (239, '兔子', 0, 6), (239, '炫耀', 0, 7);

-- Challenge 240: He woke up and saw the finish line was still far away.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (240, '他', 1, 0), (240, '醒来', 1, 1), (240, '看见', 1, 2), (240, '终点线', 1, 3),
  (240, '还', 1, 4), (240, '很远', 1, 5),
  (240, '乌龟', 0, 6), (240, '赛跑', 0, 7);

-- Challenge 241: The true winner is the one who never stops trying.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (241, '真正的', 1, 0), (241, '赢家', 1, 1), (241, '是', 1, 2), (241, '永不', 1, 3),
  (241, '放弃', 1, 4), (241, '的', 1, 5), (241, '人', 1, 6),
  (241, '野兔', 0, 7), (241, '赛跑', 0, 8);

-- Challenge 242: He sobbed in shame when he lost the game.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (242, '他', 1, 0), (242, '输了', 1, 1), (242, '比赛', 1, 2), (242, '后', 1, 3),
  (242, '羞愧地', 1, 4), (242, '哭了', 1, 5),
  (242, '乌龟', 0, 6), (242, '炫耀', 0, 7);
