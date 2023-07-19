SELECT id,
MAX(CASE WHEN month='Jan' then revenue else null end) Jan_Revenue,
MAX(CASE WHEN month='Feb' then revenue else null end) Feb_Revenue,
MAX(CASE WHEN month='Mar' then revenue else null end) Mar_Revenue,
MAX(CASE WHEN month='Apr' then revenue else null end) Apr_Revenue,
MAX(CASE WHEN month='May' then revenue else null end) May_Revenue,
MAX(CASE WHEN month='Jun' then revenue else null end) Jun_Revenue,
MAX(CASE WHEN month='Jul' then revenue else null end) Jul_Revenue,
MAX(CASE WHEN month='Aug' then revenue else null end) Aug_Revenue,
MAX(CASE WHEN month='Sep' then revenue else null end) Sep_Revenue,
MAX(CASE WHEN month='Oct' then revenue else null end) Oct_Revenue,
MAX(CASE WHEN month='Nov' then revenue else null end) Nov_Revenue,
MAX(CASE WHEN month='Dec' then revenue else null end) Dec_Revenue
FROM
Department
Group BY id






-- Table: Department
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | revenue     | int     |
-- | month       | varchar |
-- +-------------+---------+
-- (id, month) is the primary key of this table.
-- The table has information about the revenue of each department per month.
-- The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].
  
-- Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.
-- Return the result table in any order.
