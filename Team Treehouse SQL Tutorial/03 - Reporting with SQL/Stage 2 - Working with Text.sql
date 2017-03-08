SQL Playground - Stage 2: Practice

-- Find the actor with the longest name

SELECT name AS 'Actor with the longest name' FROM actors ORDER BY LENGTH(name) DESC LIMIT 1;

-- Add the username after the review. e.g. "That was a really cool movie - chalkers"

SELECT review || " - " || username AS "Reviews" FROM reviews;

-- Uppercase all movie titles

SELECT UPPER(title) AS "Titles Capitalized" FROM movies;

--- In all of the reviews, replace the text "public relations" with "PR"

SELECT REPLACE(review,'public relations', 'PR') FROM reviews ;

--- From the actors, truncate names greater than 10 charactor with ... e.g. William Wo...

SELECT SUBSTR(name, 1, 10) || '...' FROM actors;