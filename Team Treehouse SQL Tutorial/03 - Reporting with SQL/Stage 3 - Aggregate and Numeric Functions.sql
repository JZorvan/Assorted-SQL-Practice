SQL Playground - Stage 3: Practice

-- Count all the movies in the Musical genre

SELECT COUNT(*) AS "Number of Musicals" FROM movies WHERE genre = 'Musical';

-- Calculate the average rating given by a user across all movies

SELECT username AS 'User', AVG(rating) AS 'Average Rating' FROM reviews GROUP BY username;

-- Calculate the average rating for each movie and round it to one decimal place

SELECT movie_id AS 'Movie ID', ROUND(AVG(rating), 1) AS 'Average Rating' FROM reviews GROUP BY movie_id;

-- Calculate the minimum and maximum rating for every movie

SELECT movie_id AS "Movie ID", MIN(rating) AS 'Lowest Rating', MAX(rating) AS 'Highest Rating' FROM reviews GROUP BY movie_id;