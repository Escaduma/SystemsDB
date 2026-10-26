-- What is an index?
-- An index is like table of content for a database
-- It helps SQL find rows faster without scanning the entire table

-- How to create a basic index?
CREATE INDEX -- this tells our database to build our index
idx_category -- this is the name of our index, idx means index and everything after is what the index is being applied to
ON products(category); -- We're creating the index on the category column in the products table
-- Overall this query builds an index on the category column
-- SQL will use it automatically when it decides its faster then a full scan


--Non_index_Scan
-- Analyze Query Performance
-- USe EXPLAIN ANALYZE before and after creating the index
EXPLAIN ANALYZE
SELECT * FROM products
WHERE category='Skincare';

-- We use EXPLAIN ANALYZE to see if your index is helping
-- If we see Seq Scan, SQL is scanning the whole table
-- If we seee Index Scan, its using the index we made to locate matches faster


--IndexScan
-- Forcing SQL to use INDEX SCAN
SET enable_seqscan=OFF;
EXPLAIN ANALYZE 
SELECT * FROM products
WHERE category='Skincare';

-- Small tables dont benefit from Indexes
-- When the entire table fits into memory, its faster for SQL to read all rows directly than perform multiple index lookups

-- Indexes have lookup overhead
-- Each index lookup adds extra work, PostgreAQL has to look for the index, then retrieves the rows, then piece them back together

-- SQL chooses whatever is faster, this may result in having a SEQ scane rather than an index scan
-- Indexes are extremely useful when databases have thousansds or millions of rows
