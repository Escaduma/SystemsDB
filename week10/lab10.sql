-- CREATE TABLE products_raw("id" integer PRIMARY KEY, product_name text, brand varchar(50), category text, price numeric(10,2), stock integer);

-- SELECT category,
-- UPPER(product_name) AS upperName
-- FROM products_raw;

-- SELECT category,
-- ROUND(AVG(price), 2) AS avg_stock
-- FROM products_raw
-- GROUP BY category
-- ORDER BY avg_stock;

-- CREATE VIEW product_summary AS
-- SELECT product_name, brand, price,
-- UPPER(product_name) AS upperName,
-- LOWER(brand) AS lowBrand
-- FROM products_raw
-- WHERE price>200;

-- SELECT * FROM product_summary;
