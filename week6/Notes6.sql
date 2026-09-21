--CREATE DATABASE week6;

--CREATE TABLE products_raw(id integer PRIMARY KEY, product_name varchar(20), brand varchar(20), category text, price numeric(10,2), stock integer);

--TWO WAYS to import CSV files
-- 1st option is with SQL
-- Easiest way: To import a file from the GUI go to the table and click right and the go to import, make sure the delimiter is a comma and the header is on
-- also the encoding should be UTF8

-- COPY products_raw FROM 'C:\Users\1010619\Downloads\products_raw.csv' DELIMITER ',' CSV HEADER;

-- COPY products_raw FROM 'C:\Users\1010619\Downloads\products_raw.csv' WITH (format CSV, HEADER);

-- SELECT * FROM products_raw LIMIT 5; --LIMIT puts a constraint on how rows appear

--Steps to import CSV file:
--Step 1: Make table template (Creating a table in relation to CSV column names and data types)
--Step 2: Import using GUI (right click on table, click import/export data)
--Confirm file name, delimiter, header is turned on
--After import is succesful view table via query SELECT * FROM table_name limit 5;

--Basic Arithmetic in Queries
-- SELECT price, stock, price*stock AS inventory_value
-- FROM products_raw LIMIT 5;

-- SELECT price+5 AS price_increase
-- FROM products_raw LIMIT 5;

--Built in functions that postgre has 
--SUM
-- SELECT SUM(price*stock) AS total_inventory_value
-- FROM products_raw;

--AVG, average product price
-- SELECT AVG(price) AS average_price 
-- FROM products_raw;

--Findinf the highest and lowest values, we eil ue MIN and MAX
-- SELECT MIN(price), MAX (price)
-- FROM products_raw;

--How to see how many products are in a database?
--COUNT
-- SELECT COUNT(*)
-- FROM products_raw;

--filtering with MATH 
--Show me products that cost more than $500
-- SELECT * FROM products_raw
-- WHERE price>500;

--Categories with total stock > 5
-- SELECT category, SUM(stock)
-- FROM products_raw
-- GROUP BY category
-- HAVING SUM(stock)>5;
