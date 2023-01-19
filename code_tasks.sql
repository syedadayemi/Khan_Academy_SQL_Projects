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





