--==================================================================
-- Name: Macie Escalera Duron
-- Class: database
-- Week 5 Lab
--==================================================================

--Part 1
-- CREATE DATABASE week5;

--Part 2
-- CREATE TABLE products(
-- 	id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     product_name varchar(100),
--     quantity integer
-- )
-- INSERT INTO  products (product_name, quantity)
-- VALUES
-- 	('Books', 4),
-- 	('Monitor', 5),
-- 	('Phone', 3),
-- 	('Headset', 12);

-- SELECT *
-- FROM products;

--Part 3
-- ALTER TABLE products --This modifies the table bya dding a column 
-- ADD COLUMN description text;

-- ALTER TABLE products
-- ADD COLUMN price numeric(7,2);

-- ALTER TABLE products
-- ADD COLUMN rating real;

-- ALTER TABLE products
-- ADD COLUMN last_updated timestamp with time zone;

-- ALTER TABLE products
-- ADD COLUMN in_stock boolean;

-- SELECT*
-- FROM products;

--Part 4
-- UPDATE products --Adds values to the table, to not have it without data
-- SET description='Triology of the Lord of the Rings',
-- 	price=30.99,
-- 	last_updated=now(),
-- 	in_stock= TRUE,
-- 	rating=4.7
-- WHERE product_name='Books';

-- UPDATE products
-- SET description='Monitor for a computer',
-- 	price=500,
-- 	last_updated=now(),
-- 	in_stock= TRUE,
-- 	rating=3.5
-- WHERE product_name='Monitor';

-- UPDATE products
-- SET description='Samsung S25 FE',
-- 	price=1500,
-- 	last_updated=now(),
-- 	in_stock= TRUE,
-- 	rating=3.8
-- WHERE product_name='Phone';

-- UPDATE products
-- SET description='JBL Headset',
-- 	price=149.99,
-- 	last_updated=now(),
-- 	in_stock= TRUE,
-- 	rating=2.5
-- WHERE product_name='Headset';


--Part 5
-- UPDATE products
-- SET price=35.685
-- WHERE product_name='Books';

-- SELECT product_name, price
-- FROM products;


--Part 6  --All the select statements shows the different columns that acomplish statements of theya re not they are not showed
-- SELECT *
-- FROM products

-- SELECT product_name, price, rating
-- FROM products;

-- SELECT product_name, price
-- FROM products
-- WHERE price >50.00;

-- SELECT product_name, price, in_stock
-- FROM products
-- WHERE in_stock='true';

-- SELECT product_name, price
-- FROM products
-- ORDER BY price DESC;
