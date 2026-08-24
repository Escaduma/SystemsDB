--QUERY 1
CREATE DATABASE week2lab --Create a new database
--Query 1
CREATE TABLE teachers( -- Used to create a new table 
teacher_id bigserial PRIMARY KEY, 
first_name varchar(25), 
last_name varchar(50), 
hire_date date, 
salary numeric);

--Query 2
select * from teachers; --It shows the information in the table

--Query 3
INSERT INTO teachers(first_name, last_name, hire_date, salary) --Insert information (data) into te table created
VALUES ('Alex', 'Alavez', '2025-08-01', 00000), 
('Maria', 'Vega', '2025-08-01', 000);
