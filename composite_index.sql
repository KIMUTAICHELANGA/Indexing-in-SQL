USE sql_store;

SHOW INDEXES IN customers;

-- Even we have state and points indexes MySQL selects only one index 
-- and search according to it and ignores other
-- That's why we use composite index 

EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' AND points>1000;

-- Creating composite index on state and points column
-- while creating composite index
--          put the most frequently used columns first
--          put the most cardinal columns first (a column which have more unique value)
--          no hard and fast rules depend on situation and query

CREATE INDEX idx_state_points ON customers (state, points); 


-- Using certain index explictily
SELECT customer_id
FROM customers 
USE INDEX (idx_state_points)
WHERE state = 'NY' AND points > 1000;