# Write your MySQL query statement below
SELECT e1.employee_id, e1.name, 
COUNT(DISTINCT e2.employee_id) AS reports_count, 
ROUND(AVG(e2.age), 0) AS average_age
FROM Employees e1
JOIN Employees e2
ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id;




-- SELECT 
--        e.employee_id,
--        e.name,
--        r.reports_count,
--        ROUND(r.avg_age) AS average_age
-- FROM Employees AS e
-- JOIN (
--     SELECT 
--            reports_to,
--            COUNT(*) AS reports_count,
--            AVG(age) AS avg_age 
--     FROM Employees
--     WHERE reports_to IS NOT NULL
--     GROUP BY reports_to
-- ) r
-- ON r.reports_to = e.employee_id
-- ORDER BY e.employee_id;











-- Table: Employees

-- +-------------+----------+
-- | Column Name | Type     |
-- +-------------+----------+
-- | employee_id | int      |
-- | name        | varchar  |
-- | reports_to  | int      |
-- | age         | int      |
-- +-------------+----------+
-- employee_id is the primary key for this table.
-- This table contains information about the employees and the id of the manager they report to. Some employees do not report to anyone (reports_to is null). 
 

-- For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.

-- Write an SQL query to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.

-- Return the result table ordered by employee_id.
