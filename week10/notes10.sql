-- What are functions on SQL?
-- Functions = Built-in operations that perform a specific task inside a query.

-- Common Built-in functions:
	-- ROUND(): Round a number to n decimals. Ex: SELECT ROUND(3.14159,2);	Result: 3.14
	-- 	CEIL()/FLOOR(): Round up or down.	Ex: SELECT CEIL(2.1); -> 3

-- Text Functions:
	-- UPPER(text): Converts text to uppercase.		Ex: SELECT UPPER(category);
	-- LOWER(text): Converts to lowercase.		Ex: SELECT LOWER(product_name);
	-- LENGTH(text): Returns character count.	Ex: SELECT length(product_name);

--Date Functions:
	-- NOW(): Current timestamp.		Ex: SELECT NOW();
	-- CURRENT DATE: Today's date.	Ex: SELECT CURRENT_DATE;
	-- AGE(): Returns the difference between two dates. 	Ex; SELECT AGE('2025-10-20', '2000-05-15');	Output: 25 years 5 months 5 days
	--Date functions are often used for reports or logs

-- Average price by category.
-- SELECT category,
-- Want to find the average price but I want it to be rounded
-- ROUND(AVG(price),2) AS avg_price
-- FROM products
-- GROUP BY category
-- ORDER BY avg_price DESC;

-- VIEWS
-- View is a saved SQL Query that acts like a virtual table
-- It doesnt store new data, it just stores a query definition

-- CREATE VIEW products_summary AS 
-- SELECT category,
-- ROUND(AVG(price),2) AS avg_price,
-- SUM(stock) AS total_stock
-- FROM products
-- GROUP BY category;

-- Views just create a shortcut, we can use it later as long as we call the view
-- SELECT * FROM products_summary;
-- To update the view:
-- REPLACE VIEW products_summary
-- AS 

-- To delete view:
-- DROP VIEW "name of view" -- Dont need quotes

-- Why use views?
-- Simplify long queries
-- Avoid retyping code
-- Create consistent reporting tables
-- Restrict user access (Views can hide columns)
