-- Challenge: Karaoke song selector

/*
Ever sung karaoke? It's a place where you sing songs with your friends, and it's a lot of fun. 
We've created a table with songs, and in this challenge, you'll use queries to decide what songs to sing. 
For the first step, select all the song titles.
*/

SELECT title
FROM songs;

/*
Maybe your friends only like singing either recent songs or truly epic songs. 
Add another SELECT that uses OR to show the titles of the songs that have an 'epic' mood or a release date after 1990.
*/

SELECT title
FROM songs
WHERE mood = "epic" OR released > 1990;

/*
People get picky at the end of the night. 
Add another SELECT that uses AND to show the titles of songs that are 'epic', and released after 1990, and less than 4 minutes long.
Note that the duration column is measured in seconds.
*/

SELECT title
FROM songs
WHERE mood = "epic" 
AND released > 1990
AND duration < 240;

-- Challenge: Playlist maker

/*
We've created a database of songs and artists, and you'll make playlists from them in this challenge. 
In this first step, select the title of all the songs by the artist named 'Queen'.
*/

SELECT title
FROM songs
WHERE artist = "Queen";

/*
Now you'll make a 'Pop' playlist. 
In preparation, select the name of all of the artists from the 'Pop' genre.
*/

SELECT name
FROM artists
WHERE genre = "Pop";

/*
To finish creating the 'Pop' playlist, add another query that will select the title of all the songs from the 'Pop' artists.
It should use IN on a nested subquery that's based on your previous query.
*/

SELECT title
FROM songs
WHERE artist IN (
SELECT name
FROM artists
WHERE genre = "Pop");

-- Challenge: wordiest author

/*
We've created a database of a few popular authors and their books, with word counts for each book. 
In this first step, select all the authors who have written more than 1 million words, using GROUP BY and HAVING. 
Your results table should include the 'author' and their total word count as a 'total_words' column.
*/

SELECT author, SUM(words) AS total_words
FROM books
GROUP BY author
HAVING total_words > 1000000;

/*
Now select all the authors that write more than an average of 150,000 words per book. 
Your results table should include the 'author' and average words as an 'avg_words' column.
*/

SELECT author, AVG(words) AS avg_words
FROM books
GROUP BY author
HAVING avg_words > 150000;

-- Challenge: Gradebook

/*
We've created a database to track student grades, with their name, number grade, and what percent of activities they've completed. 
In this first step, select all of the rows, and display the name, number_grade, and percent_completed, 
which you can compute by multiplying and rounding the fraction_completed column.
*/

SELECT name, number_grade, ROUND(100*fraction_completed) AS percent_completed
FROM student_grades;

/*
Now, this step is a little tricky. The goal is a table that shows how many students have earned which letter_grade. 
You can output the letter_grade by using CASE with the number_grade column, 
outputting 'A' for grades > 90, 'B' for grades > 80, 'C' for grades > 70, and 'F' otherwise. 
Then you can use COUNT with GROUP BY to show the number of students with each of those grades.
*/

SELECT COUNT(*),
    CASE
        WHEN number_grade > 90 THEN "A"
        WHEN number_grade > 80 THEN "B"
        WHEN number_grade > 70 THEN "C"
        ELSE "F"
    END AS "letter_grade"
FROM student_grades
GROUP BY letter_grade; 

-- Project: Data dig
