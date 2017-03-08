SQL Playground - Practice: Adding Data Practice Session

-- Insert the "Sci-Fi" movie "E.T. the Extra-Terrestrial" from 1982 into the movies table.

INSERT INTO movies (title, year_released, genre)VALUES ("E.T. the Extra-Terrestrial", 1982, "Sci-Fi");

-- Insert "Mark Hapka", "Jessica Rothe", "Eric Jungmann" and "Constance Wu" into the actors table.

INSERT INTO actors (name) VALUES ("Mark Hapka"), ("Jessica Rothe"), ("Eric Jungmann"), ("Constance Wu");

-- Enter a review for E.T. Use a username and review of your choosing.

INSERT INTO reviews (movie_id, username, review, rating) VALUES (11, 'JZorvan', 'Pretty overrated..', 3);