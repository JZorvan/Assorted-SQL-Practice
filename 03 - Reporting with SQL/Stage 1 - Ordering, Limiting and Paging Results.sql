SQL Playground - Stage 1: Practice

-- Order movies with the most recent movies appearing at the top

SELECT * FROM movies ORDER BY year_released DESC;

-- Sort all reviews by username

SELECT * FROM reviews ORDER BY username;

-- Find top 3 highest rating reviews

SELECT * FROM reviews ORDER BY rating DESC LIMIT 3;

-- Obtain the actor records between the 701st and 720th records using only LIMIT and OFFSET
-- N.B Due to actors being removed from the database the 701st row has the id of 702

SELECT * FROM actors LIMIT 20 OFFSET 700;