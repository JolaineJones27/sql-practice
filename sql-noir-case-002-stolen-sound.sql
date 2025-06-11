-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

-- ran this
SELECT * FROM crime_scene
WHERE date = 19830715
  AND location LIKE '%West Hollywood Records%';
-- got this result: 
-- id	date	type	location	description
-- 65	19830715	theft	West Hollywood Records	A prized vinyl record was stolen from the store during a busy evening.

  -- ran this
  SELECT *
FROM witnesses
WHERE crime_scene_id = 65;

--got these results: 
-- id	crime_scene_id	clue
-- 28	65	I saw a man wearing a red bandana rushing out of the store.
-- 75	65	The main thing I remember is that he had a distinctive gold watch on his wrist.

-- ran this 
SELECT *
FROM suspects
WHERE bandana_color = 'red'
   OR accessory LIKE '%gold watch%';

-- got these results:
-- id	name	bandana_color	accessory
-- 6	Juan Sanchez	red	sunglasses
-- 13	Ricardo Gonzalez	black	gold watch
-- 18	Diego Mendoza	red	ring
-- 24	Luis Martinez	red	silver earrings
-- 31	Julian Sanchez	red	leather gloves
-- 34	Francisco Gonzalez	brown	gold watch
-- 35	Tony Ramirez	red	gold watch
-- 39	Javier Morales	red	leather band
-- 44	Mickey Rivera	red	gold watch
-- 46	Luis Lopez	red	black gloves
-- 50	Julian Cruz	red	bracelet
-- 51	Santiago Vega	green	gold watch
-- 57	Carlos Soto	red	gold chain
-- 60	David Cruz	yellow	gold watch
-- 64	Victor Vega	red	gold bracelet
-- 69	Fernando Vega	red	bracelet
-- 74	Victor Herrera	red	bracelet
-- 82	Pedro Cruz	red	silver pendant
-- 89	Raul Soto	red	silver earring
-- 94	David Vega	red	gold belt buckle
-- 97	Rico Delgado	red	gold watch

-- ran this
SELECT *
FROM interviews
WHERE suspect_id IN (35, 44, 97);

got these results:
suspect_id	transcript
-- 35	I wasn't anywhere near West Hollywood Records that night.
-- 44	I was busy with my music career; I have nothing to do with this theft.
-- 97	I couldn't help it. I snapped and took the record.

Rico Delgado did it!
