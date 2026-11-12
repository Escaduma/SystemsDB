-- --Create a table that stores information about video games
-- CREATE TABLE games (
--     -- Automatically generates a unique ID for each game
--     game_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

--     -- Stores the name of the game
--     title varchar(100) NOT NULL,

--     -- Stores the genre of the game
--     genre varchar(50),

--     -- Stores the price with 2 decimal places
--     price numeric(6,2)
-- );


-- -- Add three games to the games table
-- INSERT INTO games (title, genre, price)
-- VALUES
--     ('Elden Ring', 'RPG', 59.99),
--     ('Minecraft', 'Sandbox', 29.99),
--     ('Helldivers 2', 'Shooter', 39.99);
-- -- Create a second table that stores game reviews

-- CREATE TABLE reviews (
--     -- Automatically generates a unique ID for each review
--     review_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

--     -- Connects each review to a game in the games table
--     game_id integer REFERENCES games(game_id),
-- 	-- References table_name(column name)
-- 	-- An FK (Foreign Key) is just a PK(Primary Key) from another table
	
--     -- Stores the review score
--     score integer
-- );
-- -- Add reviews and connect them to games using game_id
-- INSERT INTO reviews (game_id, score)
-- VALUES
--     (1, 10), -- Elden Ring
--     (2, 9),  -- Minecraft
--     (1, 8);  -- Elden Ring



--How are these 2 tables connected?
-- These are connected by games.game_id <---> reviews.game_id

--Primary Key uniquely identifies row
-- A foreign Key references a rwo in another table

--Think of it as:
-- PK: Identifies the record
-- FK: Connects to that record

--Why do we use JOINS?
-- A JOIN allows our progrma to combine related information for us

-- SELECT * FROM reviews;

--INNER JOIN: Give mes rows that have a match in both tables
-- Select the game title from games and the score from the reviews
-- SELECT games.title, reviews.score --tableName.columnName

-- --Start with the games table
-- FROM games

-- --Connect the reviews table to the games table
-- INNER JOIN reviews

-- --MAtch rows where both tables have the same game_id
-- ON games.game_id=reviews.game_id;

--This line tells Postgre HOW the 2 tables are related
-- ON games.game_id = reviews.game_id

--Postgre Essentially asks:
-- Does this game_id match this game_id?

--LEFT JOIN: Keeps everythong from the left table
-- Select the game titles and its review score
-- SELECT games.title, reviews.score --tableName.ColumnName

-- -- Games is our left table
-- FROM games

-- -- Keep every game, even if it doesnt have a review
-- LEFT JOIN reviews

-- -- Match the table using what is connecting them?
-- ON games.game_id = reviews.game_id;

--Helldivers appears now because we used a LEFT JOIN, and a left join keeps everything from the left table

-- INNER JOIN = Only matching rows

-- LEFT JOIN = Everything from the left
-- 				+ matches from the right

-- NULL tells us there was no matching review

-- Table ALIASES
-- Typing full table names get annoying and time consuming
-- We cerate aliases for the table names, shorter name

-- g is now games
-- r is now reviews
-- Select the title and the review score
-- SELECT g.title, r.score

-- --Give the alias for g
-- FROM games AS g

-- --give reviews the alias r
-- INNER JOIN reviews AS r

-- --Connect the tables via PK/FK
-- ON g.game_id = r.game_id

-- -- I want to see games that score higher than 9
-- WHERE r.score>=9

-- --Scores low to high
-- ORDER BY r.score ASC;

-- JOINS dont replace what we've learned, they allow us to use those skills across multiple tables

--How to create a table named students
CREATE TABLE students(student_id integer PRIMARY KEY, student_name varchar(100), major text);

--How to insert data into table
INSERT INTO students(student_id, student_name, major)
VALUES 
(401265, "Sebastian Talamantes", "Networking"),
(401265, "Sebastian Talamantes", "Networking");

--Query that select every column and every row
SELECT * FROM students
-- * , pulls everything from said table
-- Only want to see certain columns
SELECT student_name, major
FROM students;

--Only want to see students who are in the network program
SELECT student_name, major
FROM students
WHERE major="Networking";

-- What if i had 2 conditions that had to be true
SELECT student_name, major
FROM students
WHERE major="Networking"
AND student_id=401265;

-- If we wanted to sort them even more
-- Use ORDER BY 
-- ASC is lowest tot highest
-- DESC is high to low

-- FUNCTIONS
-- Perform calculations over muliple rows
-- Count how many students exists
SELECT COUNT (*)
FROM students;

-- Average tuition cost
SElECT AVG(tuition_cost)
FROM students;

--Highest tuition cost?
SELECT MAX(tuition_cost)
FROM students;

-- COUNT() - Count
-- SUM() - total
-- AVG() - average
-- MIN() - smallest 
-- MAX() - largest

-- How to update/alter table once its been created
-- Change the major of the student with the id of 102 to cyber
UPDATE students
-- Update: changes existing data

-- Set the new value
SET major='cyber'

--Only change this specific row
WHERE student_id=102;

--Alter table changes the table itself
-- Modify the structure od the student table
ALTER TABLE students
-- Add a column
ADD COLUMN tuition_cost numeric(10,2);


-- NULL means the value is missing or unknown

--NOT NULL requires a value, add NOT NULL AFTER THE DATA TYPE (ColumnName data type not null)
student_name varchar(100) NOT NULL

-- SELECT		-> What do I want?
-- FROM 		-> Where it is coming from?
-- WHERE		-> Which rows do I want?
-- GROUP BY		-> How should rows be grouped?
-- ORDER BY		-> How should the result be sorted?
