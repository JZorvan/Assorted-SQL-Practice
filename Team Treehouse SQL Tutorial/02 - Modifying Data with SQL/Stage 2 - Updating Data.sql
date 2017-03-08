SQL Playground - Practice: Updating Data in a Database

-- Update the movie "The Ewok Adventure" to have the genre of "Sci Fi"

UPDATE movies SET genre = 'Sci Fi' WHERE title ='The Ewok Adventure';

-- Update the movie with "Starfighter" in the title to be from the year 1984

UPDATE movies SET year_released = 1984 WHERE title LIKE '%Starfighter%';

-- Update all reviews with a negative rating to be 0.

UPDATE reviews SET rating = 0 WHERE rating < 0;

-- Update all review usernames to "Anonymous"

UPDATE reviews SET username = 'Anonymous';