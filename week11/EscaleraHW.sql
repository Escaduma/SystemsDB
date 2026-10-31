--====================================================================================================================
-- Macie Escalera
-- Database Systems
-- Week 11 Homework questions
--====================================================================================================================

--Query 1
CREATE TABLE products("index" integer PRIMARY KEY, "name" text, description text,
brand text, category varchar(100), price numeric(10,3), currency varchar(10),
stock integer, ean varchar(50), color text, "size" varchar(30), 
availability text, internal_ID integer);

--Query2
SELECT COUNT(*) FROM products;
SELECT * FROM products LIMIT 5;

--Query 3
EXPLAIN ANALYZE SELECT * FROM products WHERE category='Skincare';

--Query 4
CREATE INDEX idx_category
ON products(category);

--Query 5
EXPLAIN ANALYZE SELECT * FROM products WHERE category='Skincare';

--Query 6
CREATE INDEX idx_big_cat_price
ON products(category, price);

--Query 7
EXPLAIN ANALYZE SELECT * FROM products WHERE category='Skincare' 
AND price BETWEEN 150 AND 200;

--==================================================================================================================================================
--Questions
-- 1.	Take note: Seq Scan, rows filtered/returned, planning/execution times. 
-- Seq scan, rows removed: 96981, hit: 2448, planning time: 0.205ms, execution time: 27.911ms

-- 2.	Did it switch to Index Scan?Is execution faster? It switched to Bitmap Heap Scan, 
-- and then it shows the bitmap index scan, the planning time was 0.132ms and the execution time was 2.231
-- It was more faster than the regular one.

--REFLECTION
-- When the index wasn't created the program took more time showing the results, but this is affected by the amount of data in the table,
-- The index was choosen when the table had more data it needed to check for the asked,
-- Regularly the program goes row by row to obtain the info asked, but with the index is more easier to get information without going row by row.
