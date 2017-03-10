SQL Playground - Set Operations Practice

-- Create a list of all unique books in both north and south locations

SELECT title FROM books_north UNION ALL SELECT title FROM books_south ORDER BY title;

-- Create a list of only the unique books in both north and south locations

SELECT title FROM books_north UNION SELECT title FROM books_south ORDER BY title;

-- Create a list of books that are in both north and south locations

SELECT title FROM books_north INTERSECT SELECT title FROM books_south ORDER BY title;

-- There are two tables Fruit and Vegetable table. The Fruit table has a FruitID and a Name column and the Vegetable table has a VegetableID and Name column.
-- Create a distinct result set of fruit and vegetable names.

SELECT Name FROM Fruit UNION SELECT Name FROM Vegetable;

-- Create a list of all fruits and vegetables starting with the letters A through K . In other words all fruit and vegetables that don't start with the letter L to Z.

SELECT Name FROM Fruit WHERE Name BETWEEN 'A' AND 'L' UNION SELECT Name FROM Vegetable WHERE Name BETWEEN 'A' AND 'L';

-- Create a list of fruits and vegetables that includes any potential duplicate values. Ensure that it is in alphabetical order so that the duplicates are next to each other!

SELECT Name FROM Fruit UNION ALL SELECT Name FROM Vegetable ORDER BY Name;

-- Create an alphabetical list of produce that is considered both a fruit and a vegetable.

SELECT Name FROM Fruit INTERSECT SELECT Name FROM Vegetable ORDER BY Name;

-- Create an alphabetical list of fruits that are NOT considered a vegetable.

SELECT Name FROM Fruit EXCEPT SELECT Name FROM Vegetable ORDER BY Name;

-- Create an alphabetical list of vegetables that are NOT considered a fruit.

SELECT Name FROM Vegetable EXCEPT SELECT Name FROM Fruit ORDER BY Name;