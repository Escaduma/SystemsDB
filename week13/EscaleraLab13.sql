-- Part 1

-- CREATE TABLE publishers (
--     id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     publisher_name VARCHAR(100) NOT NULL
-- );

-- CREATE TABLE games (
--     id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     title VARCHAR(100) NOT NULL,
--     publisher_id INTEGER REFERENCES publishers(id),
--     price NUMERIC(6,2)
-- );

-- CREATE TABLE sales (
--     id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     game_id INTEGER REFERENCES games(id),
--     quantity INTEGER NOT NULL,
--     sale_date DATE NOT NULL
-- );

-- INSERT INTO publishers (publisher_name)
-- VALUES
--     ('Nintendo'),
--     ('Electronic Arts'),
--     ('Ubisoft'),
--     ('Capcom');

-- INSERT INTO games (title, publisher_id, price)
-- VALUES
--     ('Mario Kart 8 Deluxe', 1, 59.99),
--     ('Super Smash Bros Ultimate', 1, 59.99),
--     ('EA Sports FC 25', 2, 69.99),
--     ('Assassins Creed Mirage', 3, 49.99),
--     ('Street Fighter 6', 4, 59.99),
--     ('Resident Evil 4', 4, 39.99),
--     ('Indie Adventure', NULL, 19.99),
--     ('Upcoming Racing Game', 2, 49.99);

-- INSERT INTO sales (game_id, quantity, sale_date)
-- VALUES
--     (1, 5, '2025-10-01'),
--     (1, 3, '2025-10-05'),
--     (2, 4, '2025-10-03'),
--     (3, 2, '2025-10-07'),
--     (4, 3, '2025-10-09'),
--     (5, 6, '2025-10-10'),
--     (5, 2, '2025-10-12'),
--     (6, 1, '2025-10-15');

-- SELECT * FROM games;
-- SELECT * FROM publishers;
-- SELECT * FROM sales;

--=======================================================================================================
--Part 2
-- SELECT
--     g.title,
--     p.publisher_name,
-- 	g.price
-- FROM games g
-- INNER JOIN publishers p
--     ON g.publisher_id = p.id
-- ORDER BY g.title ASC;

-- Does Indie Adventure appear in your results? Why or why not?
-- No because the value of the publisher is null, which means it does not exist, and the inner joint exclude the null values

--============================================================================================================
--Part 3
-- SELECT
--     g.title,
--     p.publisher_name,
-- 	g.price
-- FROM games g
-- LEFT JOIN publishers p
--     ON g.publisher_id = p.id
-- ORDER BY price DESC;

--========================================================================================================
--Part 4
-- SELECT
--     g.title,
-- 	SUM (s.quantity) AS total_sold,
--     COUNT(s.id) AS total_sales
-- FROM games g
-- INNER JOIN sales s
--     ON g.id = s.game_id
-- GROUP BY g.id, g.title
-- ORDER BY total_sold DESC;

-- Which game has sold the most copies?
-- Street Fighter 6 and MArio Kart 8 Deluxe

--================================================================================================================
--Part 5
-- SELECT
--     p.publisher_name,
--     COUNT(g.id) AS game_count,
-- 	ROUND(AVG(g.price),2) AS avg_price
-- FROM publishers p
-- INNER JOIN games g
--     ON p.id = g.publisher_id
-- GROUP BY p.id, p.publisher_name
-- ORDER BY avg_price DESC;

-- Which publisher has the highest average game price?
-- Electronic Arts and Nintendo
