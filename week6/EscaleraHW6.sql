--=======================================
-- Macie Escalera
-- System Databases
-- Week 6 Homework
--=======================================

--Query 1
CREATE DATABASE PracticeMathDB;

--Query 2
CREATE TABLE organizations(index_num integer PRIMARY KEY,
organization_id varchar(15), org_name varchar(100),
website text, country varchar(40), description text,
founded integer, industry varchar(100), employee_num integer);

--Query 3
SELECT *
FROM organizations;

--Query 4
SELECT SUM(index_num+employee_num) AS employees
FROM organizations;

--Query 5
SELECT AVG(founded) AS year_avg FROM organizations;

--Query 6
SELECT org_name, founded
FROM organizations
WHERE founded > 2010;

--Query 7
SELECT COUNT(founded)
FROM organizations
WHERE founded>2015;

--Query 8
SELECT org_name, founded
FROM organizations
ORDER BY founded ASC;

-- A new term learned was the join, which helsp to combine information fo two tables in one, it has 4 options
