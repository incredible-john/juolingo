-- Restructure "The Lion and the Mouse" unit lessons
-- Replaces 4 large lessons (Part 1, Part 2, Part 1 Practice, Part 2 Practice)
-- with 7 smaller lessons of ~15 challenges each, 3-5 words per lesson.
-- Run: npx wrangler d1 execute juolingo-db --local --file=src/db/restructure_lion_mouse.sql

-- =============================================
-- Step 1: Delete old lessons (CASCADE deletes challenges, options, progress)
-- =============================================
DELETE FROM lessons WHERE id IN (19, 20, 21, 22);

-- =============================================
-- Step 2: Update Verb Forms lesson order
-- =============================================
UPDATE lessons SET "order" = 7 WHERE id = 23;

-- =============================================
-- Step 3: Insert 7 new lessons
-- =============================================
INSERT INTO lessons (id, unit_id, title, "order") VALUES
  (19, 6, 'Animals & Nature', 0),
  (20, 6, 'Actions', 1),
  (21, 6, 'Face to Face', 2),
  (22, 6, 'The Promise', 3),
  (24, 6, 'Laugh & Run', 4),
  (25, 6, 'The Trap', 5),
  (26, 6, 'Best Friends', 6);

-- =============================================
-- Lesson 19: Animals & Nature
-- Words: lion, mouse, tree, little, under
-- 15 challenges (IDs 243-257)
-- =============================================
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  -- SELECT_TRANSLATION (5)
  (243, 19, 'SELECT_TRANSLATION', 'lion', 0),
  (244, 19, 'SELECT_TRANSLATION', 'mouse', 1),
  (245, 19, 'SELECT_TRANSLATION', 'tree', 2),
  (246, 19, 'SELECT_TRANSLATION', 'little', 3),
  (247, 19, 'SELECT_TRANSLATION', 'under', 4),
  -- MATCH_PAIRS (1)
  (248, 19, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 5),
  -- FILL_BLANK (4)
  (249, 19, 'FILL_BLANK', 'In the zoo the ___ was sleeping in the sun.', 6),
  (250, 19, 'FILL_BLANK', 'The dog hid ___ the table.', 7),
  (251, 19, 'FILL_BLANK', 'My ___ brother likes to draw.', 8),
  (252, 19, 'FILL_BLANK', 'I saw a ___ in the kitchen.', 9),
  -- TRANSLATE (5)
  (253, 19, 'TRANSLATE', 'A lion was sleeping under a tree.', 10),
  (254, 19, 'TRANSLATE', 'The cat was sleeping under the tree.', 11),
  (255, 19, 'TRANSLATE', 'A little mouse was playing around the lion.', 12),
  (256, 19, 'TRANSLATE', 'The little boy wanted to play.', 13),
  (257, 19, 'TRANSLATE', 'There is a big tree in the park.', 14);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  -- 243: lion
  (243, '狮子', 1, 0), (243, '老虎', 0, 1), (243, '兔子', 0, 2),
  -- 244: mouse
  (244, '老鼠', 1, 0), (244, '狮子', 0, 1), (244, '蛇', 0, 2),
  -- 245: tree
  (245, '树', 1, 0), (245, '花', 0, 1), (245, '草', 0, 2),
  -- 246: little
  (246, '小小的', 1, 0), (246, '巨大的', 0, 1), (246, '凶猛的', 0, 2),
  -- 247: under
  (247, '在……下面', 1, 0), (247, '在……上面', 0, 1), (247, '在……里面', 0, 2),
  -- 248: MATCH_PAIRS
  (248, 'lion', 1, 0), (248, '狮子', 1, 1),
  (248, 'mouse', 1, 2), (248, '老鼠', 1, 3),
  (248, 'tree', 1, 4), (248, '树', 1, 5),
  (248, 'little', 1, 6), (248, '小小的', 1, 7),
  (248, 'under', 1, 8), (248, '在……下面', 1, 9),
  -- 249: FILL_BLANK "the ___ was sleeping"
  (249, 'lion', 1, 0), (249, 'mouse', 0, 1), (249, 'tree', 0, 2),
  -- 250: FILL_BLANK "hid ___ the table"
  (250, 'under', 1, 0), (250, 'around', 0, 1), (250, 'little', 0, 2),
  -- 251: FILL_BLANK "My ___ brother"
  (251, 'little', 1, 0), (251, 'under', 0, 1), (251, 'big', 0, 2),
  -- 252: FILL_BLANK "saw a ___ in the kitchen"
  (252, 'mouse', 1, 0), (252, 'lion', 0, 1), (252, 'tree', 0, 2),
  -- 253: TRANSLATE "A lion was sleeping under a tree."
  (253, '一只', 1, 0), (253, '狮子', 1, 1), (253, '在', 1, 2),
  (253, '树下', 1, 3), (253, '睡觉', 1, 4),
  (253, '老鼠', 0, 5), (253, '陷阱', 0, 6),
  -- 254: TRANSLATE "The cat was sleeping under the tree."
  (254, '猫', 1, 0), (254, '在', 1, 1), (254, '树下', 1, 2),
  (254, '睡觉', 1, 3),
  (254, '老鼠', 0, 4), (254, '陷阱', 0, 5),
  -- 255: TRANSLATE "A little mouse was playing around the lion."
  (255, '一只', 1, 0), (255, '小', 1, 1), (255, '老鼠', 1, 2),
  (255, '在', 1, 3), (255, '狮子', 1, 4), (255, '周围', 1, 5), (255, '玩耍', 1, 6),
  (255, '吃掉', 0, 7), (255, '陷阱', 0, 8),
  -- 256: TRANSLATE "The little boy wanted to play."
  (256, '小', 1, 0), (256, '男孩', 1, 1), (256, '想要', 1, 2), (256, '玩耍', 1, 3),
  (256, '狮子', 0, 4), (256, '吃掉', 0, 5),
  -- 257: TRANSLATE "There is a big tree in the park."
  (257, '公园里', 1, 0), (257, '有', 1, 1), (257, '一棵', 1, 2),
  (257, '大', 1, 3), (257, '树', 1, 4),
  (257, '老鼠', 0, 5), (257, '狮子', 0, 6);

-- =============================================
-- Lesson 20: Actions
-- Words: sleeping, playing, around, suddenly, woke
-- 15 challenges (IDs 258-272)
-- =============================================
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  -- SELECT_TRANSLATION (5)
  (258, 20, 'SELECT_TRANSLATION', 'sleeping', 0),
  (259, 20, 'SELECT_TRANSLATION', 'playing', 1),
  (260, 20, 'SELECT_TRANSLATION', 'around', 2),
  (261, 20, 'SELECT_TRANSLATION', 'suddenly', 3),
  (262, 20, 'SELECT_TRANSLATION', 'woke', 4),
  -- MATCH_PAIRS (1)
  (263, 20, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 5),
  -- FILL_BLANK (4)
  (264, 20, 'FILL_BLANK', 'The kids were ___ in the park.', 6),
  (265, 20, 'FILL_BLANK', 'The baby was ___ in the bed.', 7),
  (266, 20, 'FILL_BLANK', '___ the bell rang and we ran to class.', 8),
  (267, 20, 'FILL_BLANK', 'He ___ up early this morning.', 9),
  -- TRANSLATE (5)
  (268, 20, 'TRANSLATE', 'Suddenly the lion woke up.', 10),
  (269, 20, 'TRANSLATE', 'Who woke me up? I will eat you.', 11),
  (270, 20, 'TRANSLATE', 'The children were playing around the tree.', 12),
  (271, 20, 'TRANSLATE', 'The dog was sleeping around the corner.', 13),
  (272, 20, 'TRANSLATE', 'She suddenly woke up.', 14);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  -- 258: sleeping
  (258, '睡觉', 1, 0), (258, '跑步', 0, 1), (258, '说话', 0, 2),
  -- 259: playing
  (259, '玩耍', 1, 0), (259, '睡觉', 0, 1), (259, '吃', 0, 2),
  -- 260: around
  (260, '在周围', 1, 0), (260, '在里面', 0, 1), (260, '在远处', 0, 2),
  -- 261: suddenly
  (261, '突然', 1, 0), (261, '慢慢', 0, 1), (261, '从不', 0, 2),
  -- 262: woke
  (262, '醒来', 1, 0), (262, '睡着', 0, 1), (262, '跑走', 0, 2),
  -- 263: MATCH_PAIRS
  (263, 'sleeping', 1, 0), (263, '睡觉', 1, 1),
  (263, 'playing', 1, 2), (263, '玩耍', 1, 3),
  (263, 'around', 1, 4), (263, '在周围', 1, 5),
  (263, 'suddenly', 1, 6), (263, '突然', 1, 7),
  (263, 'woke', 1, 8), (263, '醒来', 1, 9),
  -- 264: FILL_BLANK "kids were ___ in the park"
  (264, 'playing', 1, 0), (264, 'sleeping', 0, 1), (264, 'woke', 0, 2),
  -- 265: FILL_BLANK "baby was ___ in the bed"
  (265, 'sleeping', 1, 0), (265, 'playing', 0, 1), (265, 'around', 0, 2),
  -- 266: FILL_BLANK "___ the bell rang"
  (266, 'Suddenly', 1, 0), (266, 'Around', 0, 1), (266, 'Playing', 0, 2),
  -- 267: FILL_BLANK "He ___ up early"
  (267, 'woke', 1, 0), (267, 'sleeping', 0, 1), (267, 'around', 0, 2),
  -- 268: TRANSLATE "Suddenly the lion woke up."
  (268, '突然', 1, 0), (268, '狮子', 1, 1), (268, '醒', 1, 2), (268, '了', 1, 3),
  (268, '老鼠', 0, 4), (268, '陷阱', 0, 5),
  -- 269: TRANSLATE "Who woke me up? I will eat you."
  (269, '谁', 1, 0), (269, '吵醒', 1, 1), (269, '我', 1, 2),
  (269, '我', 1, 3), (269, '要', 1, 4), (269, '吃掉', 1, 5), (269, '你', 1, 6),
  (269, '放了我', 0, 7), (269, '帮助', 0, 8),
  -- 270: TRANSLATE "The children were playing around the tree."
  (270, '孩子们', 1, 0), (270, '在', 1, 1), (270, '树', 1, 2),
  (270, '周围', 1, 3), (270, '玩耍', 1, 4),
  (270, '老鼠', 0, 5), (270, '狮子', 0, 6),
  -- 271: TRANSLATE "The dog was sleeping around the corner."
  (271, '狗', 1, 0), (271, '在', 1, 1), (271, '角落', 1, 2),
  (271, '周围', 1, 3), (271, '睡觉', 1, 4),
  (271, '陷阱', 0, 5), (271, '吃掉', 0, 6),
  -- 272: TRANSLATE "She suddenly woke up."
  (272, '她', 1, 0), (272, '突然', 1, 1), (272, '醒', 1, 2), (272, '了', 1, 3),
  (272, '睡觉', 0, 4), (272, '玩耍', 0, 5);

-- =============================================
-- Lesson 21: Face to Face
-- Words: eat, pick up, open, mouth, his
-- 15 challenges (IDs 273-287)
-- =============================================
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  -- SELECT_TRANSLATION (5)
  (273, 21, 'SELECT_TRANSLATION', 'eat', 0),
  (274, 21, 'SELECT_TRANSLATION', 'pick up', 1),
  (275, 21, 'SELECT_TRANSLATION', 'open', 2),
  (276, 21, 'SELECT_TRANSLATION', 'mouth', 3),
  (277, 21, 'SELECT_TRANSLATION', 'his', 4),
  -- MATCH_PAIRS (1)
  (278, 21, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 5),
  -- FILL_BLANK (4)
  (279, 21, 'FILL_BLANK', 'The lion wanted to ___ the mouse.', 6),
  (280, 21, 'FILL_BLANK', 'Can you ___ up the keys for me?', 7),
  (281, 21, 'FILL_BLANK', 'He ___ the door and walked in.', 8),
  (282, 21, 'FILL_BLANK', 'Open your ___ and say aah.', 9),
  -- TRANSLATE (5)
  (283, 21, 'TRANSLATE', 'The lion picked up the mouse and opened his mouth.', 10),
  (284, 21, 'TRANSLATE', 'Oh no, please don''t eat me.', 11),
  (285, 21, 'TRANSLATE', 'He opened his mouth and yawned.', 12),
  (286, 21, 'TRANSLATE', 'She picked up the book.', 13),
  (287, 21, 'TRANSLATE', 'He closed his eyes.', 14);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  -- 273: eat
  (273, '吃', 1, 0), (273, '放', 0, 1), (273, '帮', 0, 2),
  -- 274: pick up
  (274, '抓起', 1, 0), (274, '放下', 0, 1), (274, '打开', 0, 2),
  -- 275: open
  (275, '打开', 1, 0), (275, '关上', 0, 1), (275, '抓住', 0, 2),
  -- 276: mouth
  (276, '嘴巴', 1, 0), (276, '耳朵', 0, 1), (276, '尾巴', 0, 2),
  -- 277: his
  (277, '他的', 1, 0), (277, '她的', 0, 1), (277, '他们的', 0, 2),
  -- 278: MATCH_PAIRS
  (278, 'eat', 1, 0), (278, '吃', 1, 1),
  (278, 'pick up', 1, 2), (278, '抓起', 1, 3),
  (278, 'open', 1, 4), (278, '打开', 1, 5),
  (278, 'mouth', 1, 6), (278, '嘴巴', 1, 7),
  (278, 'his', 1, 8), (278, '他的', 1, 9),
  -- 279: FILL_BLANK "wanted to ___ the mouse"
  (279, 'eat', 1, 0), (279, 'open', 0, 1), (279, 'pick', 0, 2),
  -- 280: FILL_BLANK "___ up the keys"
  (280, 'pick', 1, 0), (280, 'open', 0, 1), (280, 'eat', 0, 2),
  -- 281: FILL_BLANK "___ the door"
  (281, 'opened', 1, 0), (281, 'picked', 0, 1), (281, 'ate', 0, 2),
  -- 282: FILL_BLANK "Open your ___"
  (282, 'mouth', 1, 0), (282, 'eyes', 0, 1), (282, 'ears', 0, 2),
  -- 283: TRANSLATE "The lion picked up the mouse and opened his mouth."
  (283, '狮子', 1, 0), (283, '抓起', 1, 1), (283, '老鼠', 1, 2),
  (283, '张开了', 1, 3), (283, '他的', 1, 4), (283, '嘴巴', 1, 5),
  (283, '跑走', 0, 6), (283, '陷阱', 0, 7),
  -- 284: TRANSLATE "Oh no, please don't eat me."
  (284, '哦不', 1, 0), (284, '拜托', 1, 1), (284, '不要', 1, 2),
  (284, '吃', 1, 3), (284, '我', 1, 4),
  (284, '狮子', 0, 5), (284, '抓住', 0, 6),
  -- 285: TRANSLATE "He opened his mouth and yawned."
  (285, '他', 1, 0), (285, '张开', 1, 1), (285, '他的', 1, 2),
  (285, '嘴巴', 1, 3), (285, '打了哈欠', 1, 4),
  (285, '老鼠', 0, 5), (285, '陷阱', 0, 6),
  -- 286: TRANSLATE "She picked up the book."
  (286, '她', 1, 0), (286, '拿起了', 1, 1), (286, '书', 1, 2),
  (286, '老鼠', 0, 3), (286, '陷阱', 0, 4),
  -- 287: TRANSLATE "He closed his eyes."
  (287, '他', 1, 0), (287, '闭上了', 1, 1), (287, '他的', 1, 2), (287, '眼睛', 1, 3),
  (287, '嘴巴', 0, 4), (287, '打开', 0, 5);

-- =============================================
-- Lesson 22: The Promise
-- Words: please, let me go, help, one day
-- 14 challenges (IDs 288-301)
-- =============================================
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  -- SELECT_TRANSLATION (4)
  (288, 22, 'SELECT_TRANSLATION', 'please', 0),
  (289, 22, 'SELECT_TRANSLATION', 'let me go', 1),
  (290, 22, 'SELECT_TRANSLATION', 'help', 2),
  (291, 22, 'SELECT_TRANSLATION', 'one day', 3),
  -- MATCH_PAIRS (1)
  (292, 22, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 4),
  -- FILL_BLANK (4)
  (293, 22, 'FILL_BLANK', '___ don''t eat my lunch!', 5),
  (294, 22, 'FILL_BLANK', 'I will ___ you with your homework.', 6),
  (295, 22, 'FILL_BLANK', '___ I will be a doctor.', 7),
  (296, 22, 'FILL_BLANK', 'Can you ___ me carry these bags?', 8),
  -- TRANSLATE (5)
  (297, 22, 'TRANSLATE', 'If you''ll let me go, I will help you one day.', 9),
  (298, 22, 'TRANSLATE', 'One day I will help you.', 10),
  (299, 22, 'TRANSLATE', 'Please help me.', 11),
  (300, 22, 'TRANSLATE', 'Please let me go.', 12),
  (301, 22, 'TRANSLATE', 'One day she will help us.', 13);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  -- 288: please
  (288, '请；拜托', 1, 0), (288, '不要', 0, 1), (288, '快点', 0, 2),
  -- 289: let me go
  (289, '让我走', 1, 0), (289, '抓住我', 0, 1), (289, '吃掉我', 0, 2),
  -- 290: help
  (290, '帮助', 1, 0), (290, '吃掉', 0, 1), (290, '嘲笑', 0, 2),
  -- 291: one day
  (291, '有一天', 1, 0), (291, '昨天', 0, 1), (291, '明天', 0, 2),
  -- 292: MATCH_PAIRS
  (292, 'please', 1, 0), (292, '请；拜托', 1, 1),
  (292, 'let me go', 1, 2), (292, '让我走', 1, 3),
  (292, 'help', 1, 4), (292, '帮助', 1, 5),
  (292, 'one day', 1, 6), (292, '有一天', 1, 7),
  -- 293: FILL_BLANK "___ don't eat my lunch!"
  (293, 'Please', 1, 0), (293, 'Suddenly', 0, 1), (293, 'One day', 0, 2),
  -- 294: FILL_BLANK "I will ___ you"
  (294, 'help', 1, 0), (294, 'eat', 0, 1), (294, 'open', 0, 2),
  -- 295: FILL_BLANK "___ I will be a doctor"
  (295, 'One day', 1, 0), (295, 'Please', 0, 1), (295, 'Suddenly', 0, 2),
  -- 296: FILL_BLANK "Can you ___ me"
  (296, 'help', 1, 0), (296, 'let', 0, 1), (296, 'eat', 0, 2),
  -- 297: TRANSLATE "If you'll let me go, I will help you one day."
  (297, '如果', 1, 0), (297, '你', 1, 1), (297, '让我走', 1, 2),
  (297, '有一天', 1, 3), (297, '我', 1, 4), (297, '会', 1, 5),
  (297, '帮', 1, 6), (297, '你', 1, 7),
  (297, '吃掉', 0, 8), (297, '陷阱', 0, 9),
  -- 298: TRANSLATE "One day I will help you."
  (298, '有一天', 1, 0), (298, '我', 1, 1), (298, '会', 1, 2),
  (298, '帮', 1, 3), (298, '你', 1, 4),
  (298, '吃掉', 0, 5), (298, '抓住', 0, 6),
  -- 299: TRANSLATE "Please help me."
  (299, '请', 1, 0), (299, '帮', 1, 1), (299, '我', 1, 2),
  (299, '吃掉', 0, 3), (299, '抓住', 0, 4),
  -- 300: TRANSLATE "Please let me go."
  (300, '请', 1, 0), (300, '让', 1, 1), (300, '我', 1, 2), (300, '走', 1, 3),
  (300, '吃掉', 0, 4), (300, '抓住', 0, 5),
  -- 301: TRANSLATE "One day she will help us."
  (301, '有一天', 1, 0), (301, '她', 1, 1), (301, '会', 1, 2),
  (301, '帮', 1, 3), (301, '我们', 1, 4),
  (301, '陷阱', 0, 5), (301, '跑走', 0, 6);

-- =============================================
-- Lesson 24: Laugh & Run
-- Words: do, laugh, run away, next, next day
-- 15 challenges (IDs 302-315, 335)
-- =============================================
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  -- SELECT_TRANSLATION (5)
  (302, 24, 'SELECT_TRANSLATION', 'do', 0),
  (303, 24, 'SELECT_TRANSLATION', 'laugh', 1),
  (304, 24, 'SELECT_TRANSLATION', 'run away', 2),
  (305, 24, 'SELECT_TRANSLATION', 'next', 3),
  (306, 24, 'SELECT_TRANSLATION', 'next day', 4),
  -- MATCH_PAIRS (1)
  (307, 24, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 5),
  -- FILL_BLANK (4)
  (308, 24, 'FILL_BLANK', 'She ___ at his joke.', 6),
  (309, 24, 'FILL_BLANK', 'What can you ___?', 7),
  (310, 24, 'FILL_BLANK', 'The rabbit ___ away when it saw us.', 8),
  (311, 24, 'FILL_BLANK', 'The ___ day we went to the park.', 9),
  -- TRANSLATE (5)
  (312, 24, 'TRANSLATE', 'I''m a lion and you''re a mouse, what can you do?', 10),
  (313, 24, 'TRANSLATE', 'The lion laughed.', 11),
  (314, 24, 'TRANSLATE', 'Fine, I''ll let you go.', 12),
  (315, 24, 'TRANSLATE', 'The mouse ran away.', 13),
  (335, 24, 'TRANSLATE', 'She laughed when she heard the joke.', 14);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  -- 302: do
  (302, '做', 1, 0), (302, '吃', 0, 1), (302, '睡', 0, 2),
  -- 303: laugh
  (303, '大笑', 1, 0), (303, '哭', 0, 1), (303, '睡', 0, 2),
  -- 304: run away
  (304, '跑走', 1, 0), (304, '留下', 0, 1), (304, '睡觉', 0, 2),
  -- 305: next
  (305, '下一个', 1, 0), (305, '上一个', 0, 1), (305, '第一个', 0, 2),
  -- 306: next day
  (306, '第二天', 1, 0), (306, '昨天', 0, 1), (306, '去年', 0, 2),
  -- 307: MATCH_PAIRS
  (307, 'do', 1, 0), (307, '做', 1, 1),
  (307, 'laugh', 1, 2), (307, '大笑', 1, 3),
  (307, 'run away', 1, 4), (307, '跑走', 1, 5),
  (307, 'next', 1, 6), (307, '下一个', 1, 7),
  (307, 'next day', 1, 8), (307, '第二天', 1, 9),
  -- 308: FILL_BLANK "She ___ at his joke"
  (308, 'laughed', 1, 0), (308, 'ran', 0, 1), (308, 'did', 0, 2),
  -- 309: FILL_BLANK "What can you ___?"
  (309, 'do', 1, 0), (309, 'laugh', 0, 1), (309, 'run', 0, 2),
  -- 310: FILL_BLANK "The rabbit ___ away"
  (310, 'ran', 1, 0), (310, 'laughed', 0, 1), (310, 'next', 0, 2),
  -- 311: FILL_BLANK "The ___ day"
  (311, 'next', 1, 0), (311, 'last', 0, 1), (311, 'one', 0, 2),
  -- 312: TRANSLATE "I'm a lion and you're a mouse, what can you do?"
  (312, '我是', 1, 0), (312, '狮子', 1, 1), (312, '你', 1, 2),
  (312, '是', 1, 3), (312, '老鼠', 1, 4), (312, '你能', 1, 5),
  (312, '做', 1, 6), (312, '什么', 1, 7),
  (312, '陷阱', 0, 8), (312, '跑走', 0, 9),
  -- 313: TRANSLATE "The lion laughed."
  (313, '狮子', 1, 0), (313, '笑了', 1, 1),
  (313, '老鼠', 0, 2), (313, '陷阱', 0, 3),
  -- 314: TRANSLATE "Fine, I'll let you go."
  (314, '好吧', 1, 0), (314, '我', 1, 1), (314, '放', 1, 2),
  (314, '你', 1, 3), (314, '走', 1, 4),
  (314, '吃掉', 0, 5), (314, '抓住', 0, 6),
  -- 315: TRANSLATE "The mouse ran away."
  (315, '老鼠', 1, 0), (315, '跑', 1, 1), (315, '走了', 1, 2),
  (315, '狮子', 0, 3), (315, '陷阱', 0, 4),
  -- 335: TRANSLATE "She laughed when she heard the joke."
  (335, '她', 1, 0), (335, '听到', 1, 1), (335, '笑话', 1, 2),
  (335, '后', 1, 3), (335, '笑了', 1, 4),
  (335, '陷阱', 0, 5), (335, '跑走', 0, 6);

-- =============================================
-- Lesson 25: The Trap
-- Words: caught, trap, saw, ran
-- 15 challenges (IDs 336-350)
-- =============================================
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  -- SELECT_TRANSLATION (4)
  (336, 25, 'SELECT_TRANSLATION', 'caught', 0),
  (337, 25, 'SELECT_TRANSLATION', 'trap', 1),
  (338, 25, 'SELECT_TRANSLATION', 'saw', 2),
  (339, 25, 'SELECT_TRANSLATION', 'ran', 3),
  -- MATCH_PAIRS (1)
  (340, 25, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 4),
  -- FILL_BLANK (5)
  (341, 25, 'FILL_BLANK', 'The lion got ___ in a trap.', 5),
  (342, 25, 'FILL_BLANK', 'There is a ___ in the forest.', 6),
  (343, 25, 'FILL_BLANK', 'I ___ a bird in the sky.', 7),
  (344, 25, 'FILL_BLANK', 'He ___ to the store.', 8),
  (345, 25, 'FILL_BLANK', 'The mouse ___ the lion in the trap.', 9),
  -- TRANSLATE (5)
  (346, 25, 'TRANSLATE', 'The next day, the lion got caught in a trap.', 10),
  (347, 25, 'TRANSLATE', 'The mouse who saw this ran to the lion.', 11),
  (348, 25, 'TRANSLATE', 'The next day he was caught in the rain.', 12),
  (349, 25, 'TRANSLATE', 'She ran to the door.', 13),
  (350, 25, 'TRANSLATE', 'He saw a mouse under the tree.', 14);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  -- 336: caught
  (336, '抓住；被困', 1, 0), (336, '放走', 0, 1), (336, '打开', 0, 2),
  -- 337: trap
  (337, '陷阱', 1, 0), (337, '树', 0, 1), (337, '嘴巴', 0, 2),
  -- 338: saw
  (338, '看见', 1, 0), (338, '听见', 0, 1), (338, '闻到', 0, 2),
  -- 339: ran
  (339, '跑', 1, 0), (339, '走', 0, 1), (339, '睡', 0, 2),
  -- 340: MATCH_PAIRS
  (340, 'caught', 1, 0), (340, '抓住；被困', 1, 1),
  (340, 'trap', 1, 2), (340, '陷阱', 1, 3),
  (340, 'saw', 1, 4), (340, '看见', 1, 5),
  (340, 'ran', 1, 6), (340, '跑', 1, 7),
  -- 341: FILL_BLANK "got ___ in a trap"
  (341, 'caught', 1, 0), (341, 'ran', 0, 1), (341, 'saw', 0, 2),
  -- 342: FILL_BLANK "a ___ in the forest"
  (342, 'trap', 1, 0), (342, 'tree', 0, 1), (342, 'mouse', 0, 2),
  -- 343: FILL_BLANK "I ___ a bird"
  (343, 'saw', 1, 0), (343, 'ran', 0, 1), (343, 'caught', 0, 2),
  -- 344: FILL_BLANK "He ___ to the store"
  (344, 'ran', 1, 0), (344, 'saw', 0, 1), (344, 'caught', 0, 2),
  -- 345: FILL_BLANK "mouse ___ the lion"
  (345, 'saw', 1, 0), (345, 'ran', 0, 1), (345, 'caught', 0, 2),
  -- 346: TRANSLATE "The next day, the lion got caught in a trap."
  (346, '第二天', 1, 0), (346, '狮子', 1, 1), (346, '被困在', 1, 2),
  (346, '陷阱', 1, 3),
  (346, '老鼠', 0, 4), (346, '跑走', 0, 5),
  -- 347: TRANSLATE "The mouse who saw this ran to the lion."
  (347, '看见这一幕', 1, 0), (347, '的', 1, 1), (347, '老鼠', 1, 2),
  (347, '跑到', 1, 3), (347, '狮子', 1, 4), (347, '那儿', 1, 5),
  (347, '大笑', 0, 6), (347, '放走', 0, 7),
  -- 348: TRANSLATE "The next day he was caught in the rain."
  (348, '第二天', 1, 0), (348, '他', 1, 1), (348, '被', 1, 2),
  (348, '雨', 1, 3), (348, '困', 1, 4), (348, '住了', 1, 5),
  (348, '老鼠', 0, 6), (348, '大笑', 0, 7),
  -- 349: TRANSLATE "She ran to the door."
  (349, '她', 1, 0), (349, '跑到', 1, 1), (349, '门', 1, 2), (349, '那儿', 1, 3),
  (349, '陷阱', 0, 4), (349, '老鼠', 0, 5),
  -- 350: TRANSLATE "He saw a mouse under the tree."
  (350, '他', 1, 0), (350, '看见', 1, 1), (350, '一只', 1, 2),
  (350, '老鼠', 1, 3), (350, '在', 1, 4), (350, '树下', 1, 5),
  (350, '陷阱', 0, 6), (350, '大笑', 0, 7);

-- =============================================
-- Lesson 26: Best Friends
-- Words: began, saved my life, from that day, became
-- 14 challenges (IDs 351-364)
-- =============================================
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  -- SELECT_TRANSLATION (4)
  (351, 26, 'SELECT_TRANSLATION', 'began', 0),
  (352, 26, 'SELECT_TRANSLATION', 'saved my life', 1),
  (353, 26, 'SELECT_TRANSLATION', 'from that day', 2),
  (354, 26, 'SELECT_TRANSLATION', 'became', 3),
  -- MATCH_PAIRS (1)
  (355, 26, 'MATCH_PAIRS', 'Match the English words with their Chinese translations.', 4),
  -- FILL_BLANK (4)
  (356, 26, 'FILL_BLANK', 'He ___ to sing a song.', 5),
  (357, 26, 'FILL_BLANK', 'The doctor ___ my life.', 6),
  (358, 26, 'FILL_BLANK', '___ that day we became friends.', 7),
  (359, 26, 'FILL_BLANK', 'The caterpillar ___ a butterfly.', 8),
  -- TRANSLATE (5)
  (360, 26, 'TRANSLATE', 'The mouse began to chew the rope.', 9),
  (361, 26, 'TRANSLATE', 'Thank you. You saved my life.', 10),
  (362, 26, 'TRANSLATE', 'From that day, the lion and the mouse became best friends.', 11),
  (363, 26, 'TRANSLATE', 'She began to read the book.', 12),
  (364, 26, 'TRANSLATE', 'From that day we became friends.', 13);

INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  -- 351: began
  (351, '开始', 1, 0), (351, '结束', 0, 1), (351, '忘记', 0, 2),
  -- 352: saved my life
  (352, '救了我的命', 1, 0), (352, '吃掉我', 0, 1), (352, '抓住我', 0, 2),
  -- 353: from that day
  (353, '从那天起', 1, 0), (353, '昨天', 0, 1), (353, '明天', 0, 2),
  -- 354: became
  (354, '成为', 1, 0), (354, '离开', 0, 1), (354, '忘记', 0, 2),
  -- 355: MATCH_PAIRS
  (355, 'began', 1, 0), (355, '开始', 1, 1),
  (355, 'saved my life', 1, 2), (355, '救了我的命', 1, 3),
  (355, 'from that day', 1, 4), (355, '从那天起', 1, 5),
  (355, 'became', 1, 6), (355, '成为', 1, 7),
  -- 356: FILL_BLANK "He ___ to sing"
  (356, 'began', 1, 0), (356, 'saved', 0, 1), (356, 'became', 0, 2),
  -- 357: FILL_BLANK "doctor ___ my life"
  (357, 'saved', 1, 0), (357, 'began', 0, 1), (357, 'became', 0, 2),
  -- 358: FILL_BLANK "___ that day"
  (358, 'From', 1, 0), (358, 'Next', 0, 1), (358, 'One', 0, 2),
  -- 359: FILL_BLANK "caterpillar ___ a butterfly"
  (359, 'became', 1, 0), (359, 'began', 0, 1), (359, 'saved', 0, 2),
  -- 360: TRANSLATE "The mouse began to chew the rope."
  (360, '老鼠', 1, 0), (360, '开始', 1, 1), (360, '咬', 1, 2), (360, '绳子', 1, 3),
  (360, '大笑', 0, 4), (360, '放走', 0, 5),
  -- 361: TRANSLATE "Thank you. You saved my life."
  (361, '谢谢你', 1, 0), (361, '你', 1, 1), (361, '救', 1, 2),
  (361, '了', 1, 3), (361, '我的', 1, 4), (361, '命', 1, 5),
  (361, '陷阱', 0, 6), (361, '跑走', 0, 7),
  -- 362: TRANSLATE "From that day, the lion and the mouse became best friends."
  (362, '从', 1, 0), (362, '那天', 1, 1), (362, '起', 1, 2),
  (362, '狮子', 1, 3), (362, '和', 1, 4), (362, '老鼠', 1, 5),
  (362, '成了', 1, 6), (362, '最好的', 1, 7), (362, '朋友', 1, 8),
  (362, '陷阱', 0, 9), (362, '大笑', 0, 10),
  -- 363: TRANSLATE "She began to read the book."
  (363, '她', 1, 0), (363, '开始', 1, 1), (363, '读', 1, 2),
  (363, '那本', 1, 3), (363, '书', 1, 4),
  (363, '狮子', 0, 5), (363, '跑走', 0, 6),
  -- 364: TRANSLATE "From that day we became friends."
  (364, '从', 1, 0), (364, '那天', 1, 1), (364, '起', 1, 2),
  (364, '我们', 1, 3), (364, '成了', 1, 4), (364, '朋友', 1, 5),
  (364, '陷阱', 0, 6), (364, '放走', 0, 7);
