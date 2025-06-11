-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

-- ran this
SELECT * FROM crime_scene
WHERE date = 19830715
  AND location LIKE '%West Hollywood Records%';
-- got this answer:
-- Results
-- id	date	type	location	description
-- 65	19830715	theft	West Hollywood Records	A prized vinyl record was stolen from the store during a busy evening.

  -- ran this
  SELECT clue FROM witnesses
WHERE crime_scene_id = (
    SELECT id FROM crime_scene
    WHERE date = 19830715
      AND location LIKE '%West Hollywood Records%'
);
--got this answer: 
-- Results
-- clue
-- I saw a man wearing a red bandana rushing out of the store.
-- The main thing I remember is that he had a distinctive gold watch on his wrist.

-- ran this 
WHERE bandana_color IN (
    SELECT clue FROM witnesses
    WHERE crime_scene_id = (
        SELECT id FROM crime_scene
        WHERE date = 19830715
          AND location LIKE '%West Hollywood Records%'
    )
)
-- got no result? Results
-- No results yet. Execute a query to see the results.

