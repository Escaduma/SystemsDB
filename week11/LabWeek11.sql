--		PART A
SELECT COUNT(*)
FROM products;
-- How many records are in your table? There are 100

-- Why might the number of records affect query performance? Because if there is more data
-- it is hard to find specific information

--		PART B
SELECT *
FROM products
WHERE category='Skincare';

EXPLAIN ANALYZE
SELECT * FROM products
WHERE category='Skincare';

-- Did PostgreSQL use a sequential scan (Seq Scan)? Yes

-- How many records were returned? There was 97 removed and 3 hits

-- What was the execution time? 0.047ms


--		PART C
EXPLAIN ANALYZE
SELECT * FROM products
WHERE category='Skincare';

-- Did PostgreSQL use an Index Scan, Bitmap Index Scan, or continue using a Seq Scan? It continued using Seq Scan

-- Was the execution time faster or slower? A little bit faster

-- Why might PostgreSQL choose not to use an index even when one exists? Because the tables does not contain thousand of data


--		PART D
SET enable_seqscan=OFF;
EXPLAIN ANALYZE 
SELECT * FROM products
WHERE category='Skincare';
SET enable_seqscan=ON;
-- Did disabling sequential scans change how PostgreSQL executed your query? Yes, it Bitmap Heap Scan

-- Why might PostgreSQL normally prefer a sequential scan over an index scan? I think it depends on the amount of data in the
-- database I guess.
