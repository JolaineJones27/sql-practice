-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

SELECT *
FROM crime_scene
WHERE location = 'Blue Note Lounge' 
  AND description LIKE '%briefcase%';

-- got this result: id	date	type	location	description
-- 76	19851120	theft	Blue Note Lounge	A briefcase containing sensitive documents vanished. A witness reported a man in a trench coat with a scar on his left cheek fleeing the scene.

SELECT * 
FROM suspects
WHERE description LIKE '%trench coat%';

SELECT transcript FROM interviews
WHERE suspect_id = (
    SELECT id FROM suspects
    WHERE attire LIKE '%trench coat%'
);

-- ID 76 did it!


-- ok, the SELECT * FROM suspects WHERE 'description' LIKE '%trench coat%' works and I don't know why but it didn't at first without the '' 

-- I'm kinda confused. only one result came up I think - is it the same answer?

