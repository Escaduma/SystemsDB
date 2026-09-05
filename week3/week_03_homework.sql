-- =============================================
-- Week 3 Homework
-- Name: Macie Escalera
-- =============================================

--Query 1 - Creation of the database
CREATE DATABASE week3_homework;

--Query 2 - Creation of the table 
CREATE TABLE movies(
id_num integer GENERATED ALWAYS AS IDENTITY,
title varchar(75),
release_year numeric,
genre varchar(50),
rating numeric(3,1)
)

--Query 3 - adding data to the table 
INSERT INTO movies (title, release_year, genre, rating)
VALUES 
('La la land', 2015, 'Romance', 9.5),
('Boulevard', 2026, 'Romance', 7.3),
('Charlie and the chocolate factory', 2005, 'Action', 9.5),
('The Hunger Games', 2012, 'Action', 8.6),
('The fast and the furious', 2001, 'Action', 9.8);

--Query 4 - Displays all information from the table
SELECT * 
FROM movies;

--Query 5 - Displays only the information of the columns mentioned
SELECT id_num, title, release_year
FROM movies;

--Query 6 - Displays unique values in the column release_year
SELECT DISTINCT release_year
FROM movies;

--Query 7 - Displays the information of the columns given, but just the rating that is between 8.5 nad 9.0
SELECT title, release_year, rating
FROM movies
WHERE rating BETWEEN 8.5 AND 9.0;

--Query 8 - Displays the title and relase year, but showing only the movies names that start with "the"
SELECT title, release_year
FROM movies
WHERE title ILIKE 'The%';

--Query 9 - Displays the title but sort by the relase year from higher to lower
SELECT title, release_year
FROM movies
ORDER BY release_year ASC;

--Query 10 - Displays the title, release year and rating, but only the movies with rating higher than 8.5 
--and sort by rating (lower to higher) and release year (higher to lower)
SELECT title, release_year, rating
FROM movies
WHERE rating > 8.5
ORDER BY rating DESC, release_year ASC;


--======================================================================================
--                                 Chapter 4. Quick Skim
--======================================================================================

--I learned the differnt types of data that are like string (varchar, char, and text), numbers (intergers, fixed-point, and floating-point)
--there are also different types of data for the date and time, and the two types of auto-increment

--Question: How the different types of decimal data works? I just feel a little confuse about it
