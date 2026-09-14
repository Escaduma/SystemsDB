--Part 1
CREATE DATABASE week5;

--Part 2
CREATE TABLE products(
	id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_name varchar(100),
    quantity integer
)
INSERT INTO  products (product_name, quantity)
VALUES
	('Books', 4),
	('Monitor', 5),
	('Phone', 3),
	('Headset', 12);

SELECT *
FROM products;

--Part 3
