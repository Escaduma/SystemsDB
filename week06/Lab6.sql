--=======================================================================
-- Macie Escalera
-- Database Sytems
-- Lab 6
--=======================================================================

--Part A - Importing Data
 
--CREATE TABLE product (index integer PRIMARY KEY, name text, description text, brand varchar(75), category varchar(75),  
-- price integer, currency varchar(5), stock integer, ean varchar(30), color varchar(50), size varchar(40), availability varchar(50),
-- internal_id integer);

--Shows all the data of the table products
-- SELECT * FROM product;

--Part B - Math & Stats queries

-- Shows the price and name, but also creates a temporary column to show the result of the multiplication made
-- SELECT name, price, stock, price*stock AS inventory_value
-- FROM product LIMIT 5;

--Shows the average of the prices by creating a new columns called average_price and giving the result
-- SELECT AVG(price) AS average_price
-- FROM product;

--show the max and min price of the table products
-- SELECT MIN (price), MAX (price)
-- FROM product;

--Shows the total of products in the table, which are 100
-- SELECT COUNT(*)
-- FROM product;
