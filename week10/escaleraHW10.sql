--Query 1
CREATE DATABASE week10;

--Query 2
CREATE TABLE products_raw("index" integer PRIMARY KEY, "name" text, 
description text, brand text, category text, price numeric(10,2), 
currency varchar(10), stock integer, ean varchar(50), color text,
"size" varchar(30), availability text, internal_id integer);

--Query 3
SELECT category,
ROUND(AVG(price), 2) AS avg_price
FROM products_raw
GROUP BY category
ORDER BY avg_price;

SELECT category,
CEIL(AVG(price)) AS avg_price
FROM products_raw
GROUP BY category
ORDER BY avg_price;

--Query 4
SELECT MAX(price)
FROM products_raw;

SELECT MIN(price)
FROM products_raw;

--Query 5
SELECT price,
FLOOR(price) AS wholeNumbers
FROM products_raw;

--Query 6
SELECT category,
UPPER(category) AS upper_category
FROM products_raw;

--Query 7
CREATE VIEW category_overview AS
SELECT category, 
ROUND(AVG(price),2) AS average_price,
SUM(stock) AS total_stock
FROM products_raw
WHERE price>=50
GROUP BY category;

SELECT * FROM category_overview;
