-- EXPLAIN keyword is used to view various attributes of finding result set
EXPLAIN SELECT customer_id FROM customers

-- Index creating conveintion
CREATE INDEX idx_columnname ON table_name (columnname);

-- Creatind index on state column of customer table
CREATE INDEX idx_state ON customers (state);

-- Viewing Index of table
SHOW INDEXES IN customers;


-- Prefix Indexes
-- Used for string, text
-- Whenever creating a index of string, text, varchar column 
-- we should only index limited number of character on that string set
-- so that searching and storing that index will be effiecient
-- here we are indexing first 20 character set of string
-- and it depends upon usecase
CREATE INDEX idx_lastname ON customers (lastname(5));


-- Droping index
DROP INDEX idx_state ON customers;

-- we should isolate our column while searching and querying
WHERE points + 10 > 2000; -- WRONG

WHERE points > 2000; -- RIGHT