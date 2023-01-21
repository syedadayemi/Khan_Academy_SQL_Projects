-- UNIT 3: LESSON 1 (SQL Basics)

-- Challenge: Book list database

/* 
What are your favorite books? You can make a database table to store them in! 
In this first step, create a table to store your list of books. It should have columns for id, name, and rating.
*/

CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

-- Now, add three of your favorite books into the table.

INSERT into books VALUES (1, "Born a Crime", 10);
INSERT into books VALUES (2, "Behind Her Eyes", 9);
INSERT into books VALUES (3, "Silent Patient", 10); 

-- Challenge: Box office hits database

/*
This database contains an incomplete list of box office hits and their release year. 
In this challenge, you're going to get the results back out of the database in different ways! 
In this first step, just select all the movies.
*/

SELECT * FROM movies;

/*
Now, add a second query after the first, that retrieves only the movies that were released in the year 2000 or later, not before. 
Sort the results so that the earlier movies are listed first. You should have 2 SELECT statements after this step.
*/

SELECT * FROM movies
WHERE release_year > 2000
ORDER BY release_year;

/*
Here's a table containing a TODO list with the number of minutes it will take to complete each item. 
Insert another item to your todo list with the estimated minutes it will take.
*/

INSERT INTO todo_list VALUES (4, "apply for jobs", 45);

-- Select the SUM of minutes it will take to do all of the items on your TODO list. You should only have one SELECT statement.

SELECT SUM (minutes)
FROM todo_list;

-- PROJECT: Design a store database

/*
Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. 
You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. 
You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
*/

CREATE TABLE clothes (id INTEGER PRIMARY KEY, item TEXT, color TEXT, amount INTEGER, price INTEGER, size TEXT);

INSERT INTO clothes VALUES (1, "shirt", "blue", 82, 15, "M");
INSERT INTO clothes VALUES (2, "pants", "black", 76, 40, "S");
INSERT INTO clothes VALUES (3, "tanktop", "white", 102, 5, "XS");
INSERT INTO clothes VALUES (4, "shorts", "red", 20, 13, "XL");
INSERT INTO clothes VALUES (5, "socks", "rainbow", 42, 23, "S");
INSERT INTO clothes VALUES (6, "gloves", "pink", 34, 5, "S");
INSERT INTO clothes VALUES (7, "sunglasses", "brown", 25, 8, "M");
INSERT INTO clothes VALUES (8, "hoodie", "yellow", 95, 59, "XXL");
INSERT INTO clothes VALUES (9, "dress", "green", 10, 50, "L");
INSERT INTO clothes VALUES (10, "boots", "silver", 4, 55, "L");
INSERT INTO clothes VALUES (11, "skirt", "white", 66, 20, "M");
INSERT INTO clothes VALUES (12, "shawl", "gray", 22, 13, "M");
INSERT INTO clothes VALUES (13, "coat", "beige", 58, 120, "S");
INSERT INTO clothes VALUES (14, "scarf", "blue", 44, 27, "S");
INSERT INTO clothes VALUES (15, "hat", "purple", 87, 16, "M");

SELECT item, price
FROM clothes
ORDER BY price ASC;

SELECT AVG(price)
FROM clothes;

SELECT item, price*amount AS total_price_of_item_by_amount
FROM clothes
ORDER BY total_price_of_item_by_amount ASC;
