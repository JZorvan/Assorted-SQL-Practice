SQL Playground - Stage 3: Practice

-- Find all reviews in the review table with the rating of 5

SELECT * FROM reviews WHERE rating = 5;

-- Find all the actors with the last name of Cruise

SELECT * FROM actors WHERE name LIKE '%Cruise%';

-- Find all movies in the database from the 1980s

SELECT * FROM movies WHERE year_released BETWEEN 1980 AND 1989;

-- Find all movies where the release year is missing

SELECT * FROM movies WHERE year_released IS NULL;

-- Find all movies where the genre column has information present

SELECT * FROM movies WHERE genre IS NOT NULL;

-- Who are the actors with the ids of 12127, 6901, 2071 and 2831?

SELECT * FROM actors WHERE id IN (12127, 6901, 2071, 2831);

--- Which users gave reviews of 3 or lower?

SELECT * FROM reviews WHERE rating <= 3;

-- Review ratings should be only be 1-5. Find all the invalid ratings in one query

SELECT * FROM reviews WHERE rating < 1 OR rating > 5;

-- Find all movies with any missing data

SELECT * FROM movies WHERE title IS NULL OR id IS NULL OR year_released IS NULL OR genre IS NULL;

-- Find all movies where the title begins with Alien

SELECT * FROM movies WHERE title LIKE 'Alien%';

-- Find all reviews by the user __love__

SELECT * FROM reviews WHERE username = '__love__';

-- Find all actors whos first name starts with Will

SELECT * FROM actors WHERE name LIKE 'Will%';