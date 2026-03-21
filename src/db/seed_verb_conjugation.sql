-- Verb Conjugation Lesson for Unit 6 (The Lion and the Mouse)
-- Run: npx wrangler d1 execute juolingo-db --local --file=src/db/seed_verb_conjugation.sql
-- Requires: Unit 6 must exist. Run seed_lion_mouse.sql first.
-- Structure: 1 Lesson, 19 Challenges (one per verb)

-- =====================
-- Lesson 23: Verb Forms
-- =====================
INSERT INTO lessons (id, unit_id, title, "order") VALUES
  (23, 6, 'Verb Forms', 4);

-- 19 Verb Conjugation Challenges (316-334)
-- Each challenge: question = base form, options = pairs of (conjugation name, verb form)
-- Left (Chinese): conjugation names, Right (English): conjugated forms
INSERT INTO challenges (id, lesson_id, type, question, "order") VALUES
  (316, 23, 'VERB_CONJUGATION', 'sleep', 0),
  (317, 23, 'VERB_CONJUGATION', 'play', 1),
  (318, 23, 'VERB_CONJUGATION', 'wake', 2),
  (319, 23, 'VERB_CONJUGATION', 'eat', 3),
  (320, 23, 'VERB_CONJUGATION', 'pick', 4),
  (321, 23, 'VERB_CONJUGATION', 'open', 5),
  (322, 23, 'VERB_CONJUGATION', 'let', 6),
  (323, 23, 'VERB_CONJUGATION', 'help', 7),
  (324, 23, 'VERB_CONJUGATION', 'laugh', 8),
  (325, 23, 'VERB_CONJUGATION', 'run', 9),
  (326, 23, 'VERB_CONJUGATION', 'get', 10),
  (327, 23, 'VERB_CONJUGATION', 'catch', 11),
  (328, 23, 'VERB_CONJUGATION', 'see', 12),
  (329, 23, 'VERB_CONJUGATION', 'begin', 13),
  (330, 23, 'VERB_CONJUGATION', 'chew', 14),
  (331, 23, 'VERB_CONJUGATION', 'save', 15),
  (332, 23, 'VERB_CONJUGATION', 'become', 16),
  (333, 23, 'VERB_CONJUGATION', 'be', 17),
  (334, 23, 'VERB_CONJUGATION', 'do', 18);

-- Options: interleaved pairs (Chinese conjugation name, English verb form)
-- chinese[0] pairs with english[0], chinese[1] with english[1], etc.
INSERT INTO challenge_options (challenge_id, text, is_correct, "order") VALUES
  -- sleep: sleeps, slept, slept, sleeping
  (316, '第三人称单数', 1, 0), (316, 'sleeps', 1, 1),
  (316, '过去式', 1, 2), (316, 'slept', 1, 3),
  (316, '过去分词', 1, 4), (316, 'slept', 1, 5),
  (316, '现在分词', 1, 6), (316, 'sleeping', 1, 7),

  -- play: plays, played, played, playing
  (317, '第三人称单数', 1, 0), (317, 'plays', 1, 1),
  (317, '过去式', 1, 2), (317, 'played', 1, 3),
  (317, '过去分词', 1, 4), (317, 'played', 1, 5),
  (317, '现在分词', 1, 6), (317, 'playing', 1, 7),

  -- wake: wakes, woke, woken, waking
  (318, '第三人称单数', 1, 0), (318, 'wakes', 1, 1),
  (318, '过去式', 1, 2), (318, 'woke', 1, 3),
  (318, '过去分词', 1, 4), (318, 'woken', 1, 5),
  (318, '现在分词', 1, 6), (318, 'waking', 1, 7),

  -- eat: eats, ate, eaten, eating
  (319, '第三人称单数', 1, 0), (319, 'eats', 1, 1),
  (319, '过去式', 1, 2), (319, 'ate', 1, 3),
  (319, '过去分词', 1, 4), (319, 'eaten', 1, 5),
  (319, '现在分词', 1, 6), (319, 'eating', 1, 7),

  -- pick: picks, picked, picked, picking
  (320, '第三人称单数', 1, 0), (320, 'picks', 1, 1),
  (320, '过去式', 1, 2), (320, 'picked', 1, 3),
  (320, '过去分词', 1, 4), (320, 'picked', 1, 5),
  (320, '现在分词', 1, 6), (320, 'picking', 1, 7),

  -- open: opens, opened, opened, opening
  (321, '第三人称单数', 1, 0), (321, 'opens', 1, 1),
  (321, '过去式', 1, 2), (321, 'opened', 1, 3),
  (321, '过去分词', 1, 4), (321, 'opened', 1, 5),
  (321, '现在分词', 1, 6), (321, 'opening', 1, 7),

  -- let: lets, let, let, letting
  (322, '第三人称单数', 1, 0), (322, 'lets', 1, 1),
  (322, '过去式', 1, 2), (322, 'let', 1, 3),
  (322, '过去分词', 1, 4), (322, 'let', 1, 5),
  (322, '现在分词', 1, 6), (322, 'letting', 1, 7),

  -- help: helps, helped, helped, helping
  (323, '第三人称单数', 1, 0), (323, 'helps', 1, 1),
  (323, '过去式', 1, 2), (323, 'helped', 1, 3),
  (323, '过去分词', 1, 4), (323, 'helped', 1, 5),
  (323, '现在分词', 1, 6), (323, 'helping', 1, 7),

  -- laugh: laughs, laughed, laughed, laughing
  (324, '第三人称单数', 1, 0), (324, 'laughs', 1, 1),
  (324, '过去式', 1, 2), (324, 'laughed', 1, 3),
  (324, '过去分词', 1, 4), (324, 'laughed', 1, 5),
  (324, '现在分词', 1, 6), (324, 'laughing', 1, 7),

  -- run: runs, ran, run, running
  (325, '第三人称单数', 1, 0), (325, 'runs', 1, 1),
  (325, '过去式', 1, 2), (325, 'ran', 1, 3),
  (325, '过去分词', 1, 4), (325, 'run', 1, 5),
  (325, '现在分词', 1, 6), (325, 'running', 1, 7),

  -- get: gets, got, got / gotten, getting
  (326, '第三人称单数', 1, 0), (326, 'gets', 1, 1),
  (326, '过去式', 1, 2), (326, 'got', 1, 3),
  (326, '过去分词', 1, 4), (326, 'got / gotten', 1, 5),
  (326, '现在分词', 1, 6), (326, 'getting', 1, 7),

  -- catch: catches, caught, caught, catching
  (327, '第三人称单数', 1, 0), (327, 'catches', 1, 1),
  (327, '过去式', 1, 2), (327, 'caught', 1, 3),
  (327, '过去分词', 1, 4), (327, 'caught', 1, 5),
  (327, '现在分词', 1, 6), (327, 'catching', 1, 7),

  -- see: sees, saw, seen, seeing
  (328, '第三人称单数', 1, 0), (328, 'sees', 1, 1),
  (328, '过去式', 1, 2), (328, 'saw', 1, 3),
  (328, '过去分词', 1, 4), (328, 'seen', 1, 5),
  (328, '现在分词', 1, 6), (328, 'seeing', 1, 7),

  -- begin: begins, began, begun, beginning
  (329, '第三人称单数', 1, 0), (329, 'begins', 1, 1),
  (329, '过去式', 1, 2), (329, 'began', 1, 3),
  (329, '过去分词', 1, 4), (329, 'begun', 1, 5),
  (329, '现在分词', 1, 6), (329, 'beginning', 1, 7),

  -- chew: chews, chewed, chewed, chewing
  (330, '第三人称单数', 1, 0), (330, 'chews', 1, 1),
  (330, '过去式', 1, 2), (330, 'chewed', 1, 3),
  (330, '过去分词', 1, 4), (330, 'chewed', 1, 5),
  (330, '现在分词', 1, 6), (330, 'chewing', 1, 7),

  -- save: saves, saved, saved, saving
  (331, '第三人称单数', 1, 0), (331, 'saves', 1, 1),
  (331, '过去式', 1, 2), (331, 'saved', 1, 3),
  (331, '过去分词', 1, 4), (331, 'saved', 1, 5),
  (331, '现在分词', 1, 6), (331, 'saving', 1, 7),

  -- become: becomes, became, become, becoming
  (332, '第三人称单数', 1, 0), (332, 'becomes', 1, 1),
  (332, '过去式', 1, 2), (332, 'became', 1, 3),
  (332, '过去分词', 1, 4), (332, 'become', 1, 5),
  (332, '现在分词', 1, 6), (332, 'becoming', 1, 7),

  -- be: is, was / were, been, being
  (333, '第三人称单数', 1, 0), (333, 'is', 1, 1),
  (333, '过去式', 1, 2), (333, 'was / were', 1, 3),
  (333, '过去分词', 1, 4), (333, 'been', 1, 5),
  (333, '现在分词', 1, 6), (333, 'being', 1, 7),

  -- do: does, did, done, doing
  (334, '第三人称单数', 1, 0), (334, 'does', 1, 1),
  (334, '过去式', 1, 2), (334, 'did', 1, 3),
  (334, '过去分词', 1, 4), (334, 'done', 1, 5),
  (334, '现在分词', 1, 6), (334, 'doing', 1, 7);
