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
