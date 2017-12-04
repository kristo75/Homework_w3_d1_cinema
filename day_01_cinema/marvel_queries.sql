

Select * FROM people;

-- Return ALL the data in the 'movies' table.

SELECT * FROM movies;


-- 2. Return ONLY the name column from the 'people' table

SELECT  name FROM people;


-- 3. Oops! Someone at CodeClan spelled Lorna's name wrong!
-- Change it to reflect the proper spelling (Noble)
UPDATE people SET name = 'Lorna Nobel'
WHERE name = 'Lorna Nobel-Prize';

-- 4. Return ONLY your name from the 'people' table.

SELECT name FROM people
WHERE id = 13;

-- 5. The cinema is showing 'Batman Begins', but Batman is DC,
-- not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies
WHERE title = 'Batman Begins';
SELECT * FROM movies;




-- 6. Create a new entry in the 'people' table with the name of one of the instructors
INSERT INTO people (name)
VALUES ('Craig Morton');
SELECT * FROM people;

-- 7. Alex has decided to hijack our movie evening,
--              Remove him from the table of people.

DELETE FROM people
WHERE name = 'Alex Bazlinton';
-- 8. The cinema has just heard that they will be holding an
--    exclusive midnight showing of 'Guardians of the Galaxy 2'!!
-- Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title)
VALUES ('Guardians of the Galaxy 2');

SELECT * FROM movies;
-- 9. The cinema would also like to make the Guardian movies
-- a back to back feature. Update the 'Guardians of the Galaxy' show time
-- from 17:55 to 21:30
UPDATE movies SET show_time = '21:30'
WHERE show_time = '17:55';
