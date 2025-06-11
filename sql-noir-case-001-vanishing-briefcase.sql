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
WHERE attire LIKE '%trench coat%'

  -- got these results: id	name	attire	scar
-- 3	Frankie Lombardi	trench coat	left cheek
-- 183	Vincent Malone	trench coat	left cheek
-- 237	Christopher Black	trench coat	right cheek

  
SELECT * FROM interviews WHERE suspect_id = 3;
-- got this result: suspect_id	transcript
-- suspect_id	transcript
-- 3	NULL
SELECT * FROM interviews WHERE suspect_id = 183;
-- got this result which is the answer to who did it:
suspect_id	transcript
-- 183	I wasn’t going to steal it, but I did.
SELECT * FROM interviews WHERE suspect_id = 237;
-- No results yet. Execute a query to see the results.

-- Vincent Malone did it.


