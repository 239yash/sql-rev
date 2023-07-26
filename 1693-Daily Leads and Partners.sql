# Write your MySQL query statement below
SELECT date_id, make_name,
COUNT(DISTINCT lead_id) as unique_leads,
COUNT(DISTINCT partner_id) as unique_partners
FROM DailySales
GROUP BY date_id, make_name
ORDER BY date_id;









-- Table: DailySales

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | date_id     | date    |
-- | make_name   | varchar |
-- | lead_id     | int     |
-- | partner_id  | int     |
-- +-------------+---------+
-- This table may contain duplicates (In other words, there is no primary key for this table in SQL).
-- This table contains the date and the name of the product sold and the IDs of the lead and partner it was sold to.
-- The name consists of only lowercase English letters.
 

-- For each date_id and make_name, find the number of distinct lead_id's and distinct partner_id's.

-- Return the result table in any order.
