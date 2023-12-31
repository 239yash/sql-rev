# Write your MySQL query statement below
SELECT w1.id FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate , w2.recordDate) = 1
WHERE w1.Temperature > w2.Temperature;







-- Table: Weather
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | recordDate    | date    |
-- | temperature   | int     |
-- +---------------+---------+
-- id is the primary key for this table.
-- This table contains information about the temperature on a certain day.

-- Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).
