-- Add sentence and translation columns to challenges table
-- sentence: the complete correct English sentence (for FILL_BLANK)
-- translation: the corresponding Chinese translation
-- Run: npx wrangler d1 execute juolingo-db --local --file=src/db/add_fill_blank_translations.sql

ALTER TABLE challenges ADD COLUMN sentence TEXT;
ALTER TABLE challenges ADD COLUMN translation TEXT;

-- =============================================
-- Lesson 19: Animals & Nature (IDs 249-252)
-- =============================================
UPDATE challenges SET
  sentence = 'In the zoo the lion was sleeping in the sun.',
  translation = '在动物园里，狮子正在太阳下睡觉。'
WHERE id = 249;

UPDATE challenges SET
  sentence = 'The dog hid under the table.',
  translation = '狗藏在桌子下面。'
WHERE id = 250;

UPDATE challenges SET
  sentence = 'My little brother likes to draw.',
  translation = '我的小弟弟喜欢画画。'
WHERE id = 251;

UPDATE challenges SET
  sentence = 'I saw a mouse in the kitchen.',
  translation = '我在厨房里看见了一只老鼠。'
WHERE id = 252;

-- =============================================
-- Lesson 20: Actions (IDs 264-267)
-- =============================================
UPDATE challenges SET
  sentence = 'The kids were playing in the park.',
  translation = '孩子们正在公园里玩耍。'
WHERE id = 264;

UPDATE challenges SET
  sentence = 'The baby was sleeping in the bed.',
  translation = '宝宝正在床上睡觉。'
WHERE id = 265;

UPDATE challenges SET
  sentence = 'Suddenly the bell rang and we ran to class.',
  translation = '突然铃响了，我们跑向教室。'
WHERE id = 266;

UPDATE challenges SET
  sentence = 'He woke up early this morning.',
  translation = '他今天早上很早就醒了。'
WHERE id = 267;

-- =============================================
-- Lesson 21: Face to Face (IDs 279-282)
-- =============================================
UPDATE challenges SET
  sentence = 'The lion wanted to eat the mouse.',
  translation = '狮子想要吃掉老鼠。'
WHERE id = 279;

UPDATE challenges SET
  sentence = 'Can you pick up the keys for me?',
  translation = '你能帮我捡起钥匙吗？'
WHERE id = 280;

UPDATE challenges SET
  sentence = 'He opened the door and walked in.',
  translation = '他打开门走了进去。'
WHERE id = 281;

UPDATE challenges SET
  sentence = 'Open your mouth and say aah.',
  translation = '张开嘴巴说"啊"。'
WHERE id = 282;

-- =============================================
-- Lesson 22: The Promise (IDs 293-296)
-- =============================================
UPDATE challenges SET
  sentence = 'Please don''t eat my lunch!',
  translation = '请不要吃我的午饭！'
WHERE id = 293;

UPDATE challenges SET
  sentence = 'I will help you with your homework.',
  translation = '我会帮你做作业。'
WHERE id = 294;

UPDATE challenges SET
  sentence = 'One day I will be a doctor.',
  translation = '有一天我会成为一名医生。'
WHERE id = 295;

UPDATE challenges SET
  sentence = 'Can you help me carry these bags?',
  translation = '你能帮我提这些袋子吗？'
WHERE id = 296;

-- =============================================
-- Lesson 24: Laugh & Run (IDs 308-311)
-- =============================================
UPDATE challenges SET
  sentence = 'She laughed at his joke.',
  translation = '她听了他的笑话笑了。'
WHERE id = 308;

UPDATE challenges SET
  sentence = 'What can you do?',
  translation = '你能做什么？'
WHERE id = 309;

UPDATE challenges SET
  sentence = 'The rabbit ran away when it saw us.',
  translation = '兔子看到我们就跑走了。'
WHERE id = 310;

UPDATE challenges SET
  sentence = 'The next day we went to the park.',
  translation = '第二天我们去了公园。'
WHERE id = 311;

-- =============================================
-- Lesson 25: The Trap (IDs 341-345)
-- =============================================
UPDATE challenges SET
  sentence = 'The lion got caught in a trap.',
  translation = '狮子被困在了陷阱里。'
WHERE id = 341;

UPDATE challenges SET
  sentence = 'There is a trap in the forest.',
  translation = '森林里有一个陷阱。'
WHERE id = 342;

UPDATE challenges SET
  sentence = 'I saw a bird in the sky.',
  translation = '我看见天空中有一只鸟。'
WHERE id = 343;

UPDATE challenges SET
  sentence = 'He ran to the store.',
  translation = '他跑去了商店。'
WHERE id = 344;

UPDATE challenges SET
  sentence = 'The mouse saw the lion in the trap.',
  translation = '老鼠看见了陷阱里的狮子。'
WHERE id = 345;

-- =============================================
-- Lesson 26: Best Friends (IDs 356-359)
-- =============================================
UPDATE challenges SET
  sentence = 'He began to sing a song.',
  translation = '他开始唱一首歌。'
WHERE id = 356;

UPDATE challenges SET
  sentence = 'The doctor saved my life.',
  translation = '医生救了我的命。'
WHERE id = 357;

UPDATE challenges SET
  sentence = 'From that day we became friends.',
  translation = '从那天起我们成了朋友。'
WHERE id = 358;

UPDATE challenges SET
  sentence = 'The caterpillar became a butterfly.',
  translation = '毛毛虫变成了蝴蝶。'
WHERE id = 359;
