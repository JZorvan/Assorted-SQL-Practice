SQL Playground - Stage 2: Practice

-- What are all the movies in our database?

SELECT * FROM movies;

-- How do you find all the actors in database?

SELECT * FROM actors;

-- Find all the reviews in the database

SELECT * FROM reviews;

-- Can you find all of the movie titles and release years for every movie?
-- Only bring back those two columns

SELECT title, year_released FROM movies;

-- Can you find only the actor's names?
-- Bring back only one column

SELECT name FROM actors;

-- Can you find all the usernames and their ratings (a number between 1 and 5) from the reviews table?
-- Bring back only two columns

SELECT username, rating FROM reviews;

-- From the movies table, alias the title and year_released as Movie Title and Release Year respectively

SELECT title as 'Movie Title', year_released AS 'Release Year' FROM movies;

-- From the actors table, alias the name as Actor Name

SELECT name AS 'Actor Name' FROM actors;

-- From the reviews table, alias username, review and rating as Username, Movie Review and User Rating respectively

SELECT username AS 'Username', review AS 'Movie Review', rating AS 'User Rating' FROM reviews;