SQL Playground - Practice: Deleting Data From a Database

-- We've removed the reviews section from our website. Please remove all reviews.

DELETE FROM reviews;

-- Remove movies from the year 1984.

DELETE FROM movies WHERE year_released = 1984;

-- Remove actors with the first name "Yuri", "Walter" and "Victor".

DELETE FROM actors WHERE name LIKE 'Yuri %' OR name LIKE 'Walter %' OR name LIKE 'Victor %';

-- Remove all Sci Fi movies.

DELETE FROM movies WHERE genre = 'Sci Fi';