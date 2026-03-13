-- The Lion and the Mouse Unit
-- Run: npx wrangler d1 execute juolingo-db --local --file=src/db/seed_lion_mouse.sql
-- Requires: subject_id=2 (Fairy Tales) must exist. Run seed.sql first if database is empty.
-- Structure: 1 Unit + 4 Lessons, 73 Challenges (30+24+10+9)

-- =====================
-- Unit 6: The Lion and the Mouse
-- =====================
INSERT INTO units (id, subject_id, title, description, "order") VALUES
  (6, 2, 'The Lion and the Mouse', 'A fable about kindness and helping others', 3);

-- 4 Lessons
INSERT INTO lessons (id, unit_id, title, "order") VALUES
  (19, 6, 'Part 1', 0),
  (20, 6, 'Part 2', 1),
  (21, 6, 'Part 1 Practice', 2),
  (22, 6, 'Part 2 Practice', 3);

-- ============================================================
-- Lesson 19 — Part 1: Vocabulary (19) + Matching (4) + Story (7)
-- ============================================================

-- Part 1 Vocabulary (challenges 243-261)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (243, 19, 'SELECT_TRANSLATION', 'lion', 0),
  (244, 19, 'SELECT_TRANSLATION', 'sleeping', 1),
  (245, 19, 'SELECT_TRANSLATION', 'under', 2),
  (246, 19, 'SELECT_TRANSLATION', 'tree', 3),
  (247, 19, 'SELECT_TRANSLATION', 'little', 4),
  (248, 19, 'SELECT_TRANSLATION', 'mouse', 5),
  (249, 19, 'SELECT_TRANSLATION', 'playing', 6),
  (250, 19, 'SELECT_TRANSLATION', 'around', 7),
  (251, 19, 'SELECT_TRANSLATION', 'suddenly', 8),
  (252, 19, 'SELECT_TRANSLATION', 'woke', 9),
  (253, 19, 'SELECT_TRANSLATION', 'eat', 10),
  (254, 19, 'SELECT_TRANSLATION', 'pick up', 11),
  (255, 19, 'SELECT_TRANSLATION', 'open', 12),
  (256, 19, 'SELECT_TRANSLATION', 'mouth', 13),
  (257, 19, 'SELECT_TRANSLATION', 'his', 14),
  (258, 19, 'SELECT_TRANSLATION', 'please', 15),
  (259, 19, 'SELECT_TRANSLATION', 'let me go', 16),
  (260, 19, 'SELECT_TRANSLATION', 'help', 17),
  (261, 19, 'SELECT_TRANSLATION', 'one day', 18);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (243, '狮子', 1, 0), (243, '老虎', 0, 1), (243, '兔子', 0, 2),
  (244, '睡觉', 1, 0), (244, '跑步', 0, 1), (244, '说话', 0, 2),
  (245, '在……下面', 1, 0), (245, '在……上面', 0, 1), (245, '在……里面', 0, 2),
  (246, '树', 1, 0), (246, '花', 0, 1), (246, '草', 0, 2),
  (247, '小小的', 1, 0), (247, '巨大的', 0, 1), (247, '凶猛的', 0, 2),
  (248, '老鼠', 1, 0), (248, '狮子', 0, 1), (248, '蛇', 0, 2),
  (249, '玩耍', 1, 0), (249, '睡觉', 0, 1), (249, '吃', 0, 2),
  (250, '在周围', 1, 0), (250, '在里面', 0, 1), (250, '在远处', 0, 2),
  (251, '突然', 1, 0), (251, '慢慢', 0, 1), (251, '从不', 0, 2),
  (252, '醒来', 1, 0), (252, '睡着', 0, 1), (252, '跑走', 0, 2),
  (253, '吃', 1, 0), (253, '放', 0, 1), (253, '帮', 0, 2),
  (254, '抓起', 1, 0), (254, '放下', 0, 1), (254, '打开', 0, 2),
  (255, '打开', 1, 0), (255, '关上', 0, 1), (255, '抓住', 0, 2),
  (256, '嘴巴', 1, 0), (256, '耳朵', 0, 1), (256, '尾巴', 0, 2),
  (257, '他的', 1, 0), (257, '她的', 0, 1), (257, '他们的', 0, 2),
  (258, '请；拜托', 1, 0), (258, '不要', 0, 1), (258, '快点', 0, 2),
  (259, '让我走', 1, 0), (259, '抓住我', 0, 1), (259, '吃掉我', 0, 2),
  (260, '帮助', 1, 0), (260, '吃掉', 0, 1), (260, '嘲笑', 0, 2),
  (261, '有一天', 1, 0), (261, '昨天', 0, 1), (261, '明天', 0, 2);

-- Part 1 Matching (challenges 262-265)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (262, 19, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 19),
  (263, 19, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 20),
  (264, 19, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 21),
  (265, 19, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 22);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (262, 'lion', 1, 0), (262, '狮子', 1, 1), (262, 'sleeping', 1, 2), (262, '睡觉', 1, 3),
  (262, 'under', 1, 4), (262, '在……下面', 1, 5), (262, 'tree', 1, 6), (262, '树', 1, 7),
  (262, 'little', 1, 8), (262, '小小的', 1, 9),
  (263, 'mouse', 1, 0), (263, '老鼠', 1, 1), (263, 'playing', 1, 2), (263, '玩耍', 1, 3),
  (263, 'around', 1, 4), (263, '在周围', 1, 5), (263, 'suddenly', 1, 6), (263, '突然', 1, 7),
  (263, 'woke', 1, 8), (263, '醒来', 1, 9),
  (264, 'eat', 1, 0), (264, '吃', 1, 1), (264, 'pick up', 1, 2), (264, '抓起', 1, 3),
  (264, 'open', 1, 4), (264, '打开', 1, 5), (264, 'mouth', 1, 6), (264, '嘴巴', 1, 7),
  (264, 'his', 1, 8), (264, '他的', 1, 9),
  (265, 'please', 1, 0), (265, '请；拜托', 1, 1), (265, 'let me go', 1, 2), (265, '放了我', 1, 3),
  (265, 'help', 1, 4), (265, '帮助', 1, 5), (265, 'one day', 1, 6), (265, '有一天', 1, 7),
  (265, 'lion', 1, 8), (265, '狮子', 1, 9);

-- Part 1 Story Sentences (challenges 266-272)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (266, 19, 'TRANSLATE', 'A lion was sleeping under a tree.', 23),
  (267, 19, 'TRANSLATE', 'A little mouse was playing around the lion.', 24),
  (268, 19, 'TRANSLATE', 'Suddenly the lion woke up.', 25),
  (269, 19, 'TRANSLATE', 'Who woke me up? I will eat you.', 26),
  (270, 19, 'TRANSLATE', 'The lion picked up the mouse and opened his mouth.', 27),
  (271, 19, 'TRANSLATE', 'Oh no, please don''t eat me.', 28),
  (272, 19, 'TRANSLATE', 'If you''ll let me go, I will help you one day.', 29);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (266, '一只', 1, 0), (266, '狮子', 1, 1), (266, '在', 1, 2), (266, '树下', 1, 3), (266, '睡觉', 1, 4),
  (266, '老鼠', 0, 5), (266, '陷阱', 0, 6),
  (267, '一只', 1, 0), (267, '小', 1, 1), (267, '老鼠', 1, 2), (267, '在', 1, 3), (267, '狮子', 1, 4), (267, '周围', 1, 5), (267, '玩耍', 1, 6),
  (267, '吃掉', 0, 7), (267, '陷阱', 0, 8),
  (268, '突然', 1, 0), (268, '狮子', 1, 1), (268, '醒', 1, 2), (268, '了', 1, 3),
  (268, '老鼠', 0, 4), (268, '陷阱', 0, 5),
  (269, '谁', 1, 0), (269, '把', 1, 1), (269, '我', 1, 2), (269, '吵醒', 1, 3), (269, '我', 1, 4), (269, '要', 1, 5), (269, '吃掉', 1, 6), (269, '你', 1, 7),
  (269, '放了我', 0, 8), (269, '帮助', 0, 9),
  (270, '狮子', 1, 0), (270, '抓起', 1, 1), (270, '老鼠', 1, 2), (270, '张开了', 1, 3), (270, '他的', 1, 4), (270, '嘴巴', 1, 5),
  (270, '跑走', 0, 6), (270, '陷阱', 0, 7),
  (271, '哦不', 1, 0), (271, '拜托', 1, 1), (271, '不要', 1, 2), (271, '吃', 1, 3), (271, '我', 1, 4),
  (271, '狮子', 0, 5), (271, '抓住', 0, 6),
  (272, '如果', 1, 0), (272, '你', 1, 1), (272, '放了', 1, 2), (272, '我', 1, 3), (272, '有一天', 1, 4), (272, '我', 1, 5), (272, '会', 1, 6), (272, '帮', 1, 7), (272, '你', 1, 8),
  (272, '吃掉', 0, 9), (272, '陷阱', 0, 10);

-- ============================================================
-- Lesson 20 — Part 2: Vocabulary (13) + Matching (3) + Story (8)
-- ============================================================

-- Part 2 Vocabulary (challenges 273-285)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (273, 20, 'SELECT_TRANSLATION', 'do', 0),
  (274, 20, 'SELECT_TRANSLATION', 'laugh', 1),
  (275, 20, 'SELECT_TRANSLATION', 'run away', 2),
  (276, 20, 'SELECT_TRANSLATION', 'next', 3),
  (277, 20, 'SELECT_TRANSLATION', 'next day', 4),
  (278, 20, 'SELECT_TRANSLATION', 'caught', 5),
  (279, 20, 'SELECT_TRANSLATION', 'trap', 6),
  (280, 20, 'SELECT_TRANSLATION', 'saw', 7),
  (281, 20, 'SELECT_TRANSLATION', 'ran', 8),
  (282, 20, 'SELECT_TRANSLATION', 'began', 9),
  (283, 20, 'SELECT_TRANSLATION', 'saved my life', 10),
  (284, 20, 'SELECT_TRANSLATION', 'from that day', 11),
  (285, 20, 'SELECT_TRANSLATION', 'became', 12);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (273, '做', 1, 0), (273, '吃', 0, 1), (273, '睡', 0, 2),
  (274, '大笑', 1, 0), (274, '哭', 0, 1), (274, '睡', 0, 2),
  (275, '跑走', 1, 0), (275, '留下', 0, 1), (275, '睡觉', 0, 2),
  (276, '下一个', 1, 0), (276, '上一个', 0, 1), (276, '第一个', 0, 2),
  (277, '第二天', 1, 0), (277, '昨天', 0, 1), (277, '去年', 0, 2),
  (278, '抓住；被困', 1, 0), (278, '放走', 0, 1), (278, '打开', 0, 2),
  (279, '陷阱', 1, 0), (279, '树', 0, 1), (279, '嘴巴', 0, 2),
  (280, '看见', 1, 0), (280, '听见', 0, 1), (280, '闻到', 0, 2),
  (281, '跑', 1, 0), (281, '走', 0, 1), (281, '睡', 0, 2),
  (282, '开始', 1, 0), (282, '结束', 0, 1), (282, '忘记', 0, 2),
  (283, '救了我的命', 1, 0), (283, '吃掉我', 0, 1), (283, '抓住我', 0, 2),
  (284, '从那天起', 1, 0), (284, '昨天', 0, 1), (284, '明天', 0, 2),
  (285, '成为', 1, 0), (285, '离开', 0, 1), (285, '忘记', 0, 2);

-- Part 2 Matching (challenges 286-288)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (286, 20, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 13),
  (287, 20, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 14),
  (288, 20, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 15);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (286, 'do', 1, 0), (286, '做', 1, 1), (286, 'laugh', 1, 2), (286, '大笑', 1, 3),
  (286, 'run away', 1, 4), (286, '跑走', 1, 5), (286, 'next', 1, 6), (286, '下一个', 1, 7),
  (286, 'next day', 1, 8), (286, '第二天', 1, 9),
  (287, 'caught', 1, 0), (287, '抓住；被困', 1, 1), (287, 'trap', 1, 2), (287, '陷阱', 1, 3),
  (287, 'saw', 1, 4), (287, '看见', 1, 5), (287, 'ran', 1, 6), (287, '跑', 1, 7),
  (287, 'began', 1, 8), (287, '开始', 1, 9),
  (288, 'saved my life', 1, 0), (288, '救了我的命', 1, 1), (288, 'from that day', 1, 2), (288, '从那天起', 1, 3),
  (288, 'became', 1, 4), (288, '成为', 1, 5), (288, 'do', 1, 6), (288, '做', 1, 7),
  (288, 'laugh', 1, 8), (288, '大笑', 1, 9);

-- Part 2 Story Sentences (challenges 289-296)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (289, 20, 'TRANSLATE', 'I''m a lion and you''re a mouse, what can you do?', 16),
  (290, 20, 'TRANSLATE', 'The lion laughed.', 17),
  (291, 20, 'TRANSLATE', 'Fine, I''ll let you go.', 18),
  (292, 20, 'TRANSLATE', 'The mouse ran away.', 19),
  (293, 20, 'TRANSLATE', 'The next day, the lion got caught in a trap.', 20),
  (294, 20, 'TRANSLATE', 'The mouse who saw this ran to the lion and began to chew the rope.', 21),
  (295, 20, 'TRANSLATE', 'Thank you. You saved my life.', 22),
  (296, 20, 'TRANSLATE', 'From that day, the lion and the mouse became best friends.', 23);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (289, '我是', 1, 0), (289, '狮子', 1, 1), (289, '你', 1, 2), (289, '是', 1, 3), (289, '老鼠', 1, 4), (289, '你能', 1, 5), (289, '做', 1, 6), (289, '什么', 1, 7),
  (289, '陷阱', 0, 8), (289, '跑走', 0, 9),
  (290, '狮子', 1, 0), (290, '笑了', 1, 1),
  (290, '老鼠', 0, 2), (290, '陷阱', 0, 3),
  (291, '好吧', 1, 0), (291, '我', 1, 1), (291, '放', 1, 2), (291, '你', 1, 3), (291, '走', 1, 4),
  (291, '吃掉', 0, 5), (291, '抓住', 0, 6),
  (292, '老鼠', 1, 0), (292, '跑', 1, 1), (292, '走了', 1, 2),
  (292, '狮子', 0, 3), (292, '陷阱', 0, 4),
  (293, '第二天', 1, 0), (293, '狮子', 1, 1), (293, '被困在', 1, 2), (293, '陷阱', 1, 3),
  (293, '老鼠', 0, 4), (293, '跑走', 0, 5),
  (294, '看见这一幕', 1, 0), (294, '的', 1, 1), (294, '老鼠', 1, 2), (294, '跑到', 1, 3), (294, '狮子', 1, 4), (294, '那儿', 1, 5), (294, '开始', 1, 6), (294, '咬', 1, 7), (294, '绳子', 1, 8),
  (294, '大笑', 0, 9), (294, '放走', 0, 10),
  (295, '谢谢你', 1, 0), (295, '你', 1, 1), (295, '救', 1, 2), (295, '了', 1, 3), (295, '我的', 1, 4), (295, '命', 1, 5),
  (295, '陷阱', 0, 6), (295, '跑走', 0, 7),
  (296, '从', 1, 0), (296, '那天', 1, 1), (296, '起', 1, 2), (296, '狮子', 1, 3), (296, '和', 1, 4), (296, '老鼠', 1, 5), (296, '成了', 1, 6), (296, '最好的', 1, 7), (296, '朋友', 1, 8),
  (296, '陷阱', 0, 9), (296, '大笑', 0, 10);

-- ============================================================
-- Lesson 21 — Part 1 Practice: Fill Blank (6) + New Sentences (4)
-- ============================================================

INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (297, 21, 'FILL_BLANK', 'In the zoo the ___ was sleeping in the sun.', 0),
  (298, 21, 'FILL_BLANK', 'The dog hid ___ the table.', 1),
  (299, 21, 'FILL_BLANK', 'My ___ brother likes to draw.', 2),
  (300, 21, 'FILL_BLANK', '___ the bell rang and we ran to class.', 3),
  (301, 21, 'FILL_BLANK', 'Can you ___ up the keys for me?', 4),
  (302, 21, 'FILL_BLANK', '___ don''t eat my lunch!', 5);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (297, 'lion', 1, 0), (297, 'trap', 0, 1), (297, 'tree', 0, 2),
  (298, 'under', 1, 0), (298, 'around', 0, 1), (298, 'open', 0, 2),
  (299, 'little', 1, 0), (299, 'sudden', 0, 1), (299, 'one', 0, 2),
  (300, 'Suddenly', 1, 0), (300, 'Please', 0, 1), (300, 'One day', 0, 2),
  (301, 'pick', 1, 0), (301, 'open', 0, 1), (301, 'let', 0, 2),
  (302, 'Please', 1, 0), (302, 'Suddenly', 0, 1), (302, 'One day', 0, 2);

-- Part 1 Practice New Sentences (challenges 303-306)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (303, 21, 'TRANSLATE', 'The cat was sleeping under the tree.', 6),
  (304, 21, 'TRANSLATE', 'The little boy wanted to play.', 7),
  (305, 21, 'TRANSLATE', 'He opened his mouth and yawned.', 8),
  (306, 21, 'TRANSLATE', 'One day I will help you.', 9);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (303, '猫', 1, 0), (303, '在', 1, 1), (303, '树下', 1, 2), (303, '睡觉', 1, 3),
  (303, '老鼠', 0, 4), (303, '陷阱', 0, 5),
  (304, '小', 1, 0), (304, '男孩', 1, 1), (304, '想要', 1, 2), (304, '玩耍', 1, 3),
  (304, '狮子', 0, 4), (304, '吃掉', 0, 5),
  (305, '他', 1, 0), (305, '张开', 1, 1), (305, '他的', 1, 2), (305, '嘴巴', 1, 3), (305, '打了哈欠', 1, 4),
  (305, '老鼠', 0, 5), (305, '陷阱', 0, 6),
  (306, '有一天', 1, 0), (306, '我', 1, 1), (306, '会', 1, 2), (306, '帮', 1, 3), (306, '你', 1, 4),
  (306, '吃掉', 0, 5), (306, '抓住', 0, 6);

-- ============================================================
-- Lesson 22 — Part 2 Practice: Fill Blank (5) + New Sentences (4)
-- ============================================================

INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (307, 22, 'FILL_BLANK', 'She ___ at his joke.', 0),
  (308, 22, 'FILL_BLANK', 'The rabbit ___ away when it saw us.', 1),
  (309, 22, 'FILL_BLANK', 'The ___ day we went to the park.', 2),
  (310, 22, 'FILL_BLANK', 'He ___ to sing a song.', 3),
  (311, 22, 'FILL_BLANK', 'The doctor ___ my life.', 4);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (307, 'laughed', 1, 0), (307, 'ran', 0, 1), (307, 'saw', 0, 2),
  (308, 'ran', 1, 0), (308, 'began', 0, 1), (308, 'saved', 0, 2),
  (309, 'next', 1, 0), (309, 'trap', 0, 1), (309, 'rope', 0, 2),
  (310, 'began', 1, 0), (310, 'ran', 0, 1), (310, 'caught', 0, 2),
  (311, 'saved', 1, 0), (311, 'caught', 0, 1), (311, 'ran', 0, 2);

-- Part 2 Practice New Sentences (challenges 312-315)
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (312, 22, 'TRANSLATE', 'She laughed when she heard the joke.', 5),
  (313, 22, 'TRANSLATE', 'The next day he was caught in the rain.', 6),
  (314, 22, 'TRANSLATE', 'She began to read the book.', 7),
  (315, 22, 'TRANSLATE', 'From that day we became friends.', 8);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  (312, '她', 1, 0), (312, '听到', 1, 1), (312, '笑话', 1, 2), (312, '后', 1, 3), (312, '笑了', 1, 4),
  (312, '陷阱', 0, 5), (312, '跑走', 0, 6),
  (313, '第二天', 1, 0), (313, '他', 1, 1), (313, '被', 1, 2), (313, '雨', 1, 3), (313, '困', 1, 4), (313, '住了', 1, 5),
  (313, '老鼠', 0, 6), (313, '大笑', 0, 7),
  (314, '她', 1, 0), (314, '开始', 1, 1), (314, '读', 1, 2), (314, '那本', 1, 3), (314, '书', 1, 4),
  (314, '狮子', 0, 5), (314, '跑走', 0, 6),
  (315, '从', 1, 0), (315, '那天', 1, 1), (315, '起', 1, 2), (315, '我们', 1, 3), (315, '成了', 1, 4), (315, '朋友', 1, 5),
  (315, '陷阱', 0, 6), (315, '放走', 0, 7);
