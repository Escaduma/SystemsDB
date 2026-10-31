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

--Query 3
CREATE INDEX idx_category
ON products(category);

--Query 4
EXPLAIN ANALYZE SELECT * FROM products WHERE category='Skincare';

--==================================================================================================================================================
--Questions
-- 1.	Take note: Seq Scan, rows filtered/returned, planning/execution times. 
-- Seq scan, rows removed: 96981, hit: 2448, planning time: 0.205ms, execution time: 27.911ms

-- 2.	Did it switch to Index Scan?Is execution faster? It switched to Bitmap Heap Scan, 
-- and then it shows the bitmap index scan, the planning time was 0.132ms and the execution time was 2.231
-- It was more faster than the regular one.

-- 3.	What changed between the “no index” and “with index” plans? The index helps to return the results faster

-- 4.	When did PostgreSQL choose an index? When the database contains a lot of information, and when it is one created.

-- 5.	How did the larger table size affect the optimizer compared to your smaller tables? Well the index helped to not got each row of the table 
-- in order to get the results, it just hit the necessary rows.
