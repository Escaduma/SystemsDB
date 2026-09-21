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
