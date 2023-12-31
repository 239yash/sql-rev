SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
LEFT JOIN Orders o
ON p.product_id = o.product_id
WHERE MONTH(order_date) = '02' AND YEAR(order_date) = '2020'
GROUP BY p.product_name
HAVING unit >= 100 





-- Table: Products

-- +------------------+---------+
-- | Column Name      | Type    |
-- +------------------+---------+
-- | product_id       | int     |
-- | product_name     | varchar |
-- | product_category | varchar |
-- +------------------+---------+
-- product_id is the primary key for this table.
-- This table contains data about the company's products.
 

-- Table: Orders

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | product_id    | int     |
-- | order_date    | date    |
-- | unit          | int     |
-- +---------------+---------+
-- There is no primary key for this table. It may have duplicate rows.
-- product_id is a foreign key to the Products table.
-- unit is the number of products ordered in order_date.
 

-- Write an SQL query to get the names of products that have at least 100 units ordered in February 2020 and their amount.
