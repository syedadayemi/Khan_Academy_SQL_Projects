/* 
What are your favorite books? You can make a database table to store them in! 
In this first step, create a table to store your list of books. It should have columns for id, name, and rating.
*/

CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

-- Now, add three of your favorite books into the table.

INSERT into books VALUES (1, "Born a Crime", 10);
INSERT into books VALUES (2, "Behind Her Eyes", 9);
INSERT into books VALUES (3, "Silent Patient", 10); 
