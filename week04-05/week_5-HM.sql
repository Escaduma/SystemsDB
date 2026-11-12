--==================================================
--Macie Escalera
--Database Systems
--Week 5 - Homework
--==================================================

--Part 1 - Create

CREATE DATABASE week5;

CREATE TABLE books(id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
book_name varchar(30), author varchar(30), publication_date date);\

INSERT INTO books(book_name, author, publication_date)
VALUES
('Boulevard', 'Flor M. Salvador', '2022-02-24'),
('I am not Jessica Chen', 'Ann Liang', '2025-01-28'),
('Heist', 'Ariana Godoy', '2021-05-06'),
('Solito', 'Javier Zamora', '2022-09-06'),
('Damian', 'Alex Mirez', '2022-05-19');

--Part 2 - Add

ALTER TABLE books
ADD COLUMN price numeric(6,2),
ADD COLUMN isbn char(13),
ADD COLUMN in_stock boolean, 
ADD COLUMN synopsis text;

--Part 3 - Update

UPDATE books
SET in_stock=TRUE
WHERE book_name='Boulevard';

UPDATE books
SET isbn='9788418318832'
WHERE book_name='Heist';

UPDATE books
SET price=6.90
WHERE book_name='Solito';

--Part 4 - Rename

ALTER TABLE books
RENAME COLUMN book_name TO title;

--Part 5 - Queries

SELECT *
FROM books;

SELECT title, author, price
FROM books;

SELECT title, author
FROM books
WHERE author LIKE 'A%';

SELECT title, author, publication_date
FROM books
ORDER BY  publication_date ASC;

SELECT title, author, in_stock
FROM books
WHERE in_stock='true';

--Part 6 - Quick Skim

--2 New Concepts
--Copy: Used to importa data that comes from a file that you have saved in the computer
-- I learnn that you can find the media with using the different commands and knowing how to put them

--Short Reflection
-- Which new data type did you find the most useful? I think the update because it can change data and add data to the table, which is useful when a mistake is made
-- Why did you choose the data types you used? Because i thought they would fit with the type of data that i wanted to add
-- What is the difference between ALTER TABLE and UPDATE? Alter can change names of columns in the table, when update is just to change data in the table or add
