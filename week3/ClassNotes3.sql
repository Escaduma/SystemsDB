--Query 1 
CREATE DATABASE week3lab;

--Query 2
CREATE TABLE teachers (
    id bigserial,
    first_name varchar(25),
    last_name varchar(50),
    school varchar(50),
    hire_date date,
    salary numeric
);

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
       ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
       ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
       ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
       ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
       ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);

--Query 3

--Select statement is used to retrieve data from a table
SELECT * FROM teachers;

--The * means to select all tcolumns from the table

--If wanting to show only certain columns
SELECT first_name, school
-- select these columns
--from this table
FROM teachers;

SELECT salary, first_name
FROM teachers
ORDER BY salary DESC;
--by default Postgressql sorts in ascending order
--DESC for descending order
--ASC means ascending for numbers it goes : 1,2,3,4,5...
--For text it goes: A,B,C,...
--For Dates oldest to newest
--DESC puts in reverse order

SELECT last_name, first_name
FROM teachers
ORDER BY last_name ASC;

--Ordering by mu;tiple columns, one going ASC, one going DESC
SELECT last_name, school, hire_date
FROM teachers
--Want to order by school ASC, hire_date by DESC
ORDER BY school ASC, hire_date  DESC;

--We can find unique values by using DISTINCT after SELECT
--Removes repeated values, makes data retrival look neater
SELECT DISTINCT school
FROM teachers;

--WHERE allows us to retrieve only rows that meet a certain condition
SELECT first_name, last_name, school
FROM teachers
WHERE school='Myers Middle School';

--Comparison operators
-- = equal to 
-- <> or != not equal to
-- > greater than
-- < less than
-- >= greater than equal to 
-- <= less than equal to 
-- BETWEEN: with a range 
-- IN: Match one of several values

--Find all the teachers who where hired before 1/1/2010
SELECT  first_name, hire_date
FROM teachers
WHERE  hire_date < '2010-01-01';
--Rememeber date data type is YYYY-MM-DD

--I want to seee the teachers who makes from 40k-60k
SELECT first_name, last_name, salary
FROM teachers
WHERE salary BETWEEN 40000 AND 60000;
--Remember when using  BETWEEN must also have AND

--Sometimes you don't know the exact  text you are looking for
--We use LIKE in thhis scenarion
SELECT first_name
FROM teachers
WHERE first_name LIKE 'Sam%';
-- % is a wildcard, any number of characters can appear

--LIKE vs ILIKE
--LIKE is case sensitive
--ILIKE is not case sensitive

-- _ matches exactly one character
SELECT first_name
FROM teachers
WHERE first_name LIKE '_anet';

--Use AND  when both conditions must be true
SELECT *
FROM teachers
WHERE school = 'Myers Middle School'
AND salary< 40000;

--A row must satisfy both conditions

--Use OR when either cidition can be true
SELECT *
FROM teachers
WHERE last_name='Cole'
OR last_name='Bush';

--Using parantheses
--Parantheses become more important when combining AND and OR
SELECT *
FROM teachers
WHERE school='F.D. Roosevelt HS'
AND (salary<38000 OR salary>40000);

--SELECT
--What data do we want?

--FROM
--Where does the data come from?

--WHERE
--Which rows do we want?

--ORDER BY
--How are the results sorted?
