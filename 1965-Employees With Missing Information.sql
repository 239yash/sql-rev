SELECT e.employee_id
FROM Employees e
LEFT JOIN Salaries s
ON e.employee_id = s.employee_id
WHERE salary IS NULL

UNION 

SELECT s.employee_id
FROM Salaries s
LEFT JOIN Employees e
ON e.employee_id = s.employee_id
WHERE name IS NULL

ORDER BY employee_id;






-- Table: Employees

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | employee_id | int     |
-- | name        | varchar |
-- +-------------+---------+
-- employee_id is the primary key for this table.
-- Each row of this table indicates the name of the employee whose ID is employee_id.
 

-- Table: Salaries

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | employee_id | int     |
-- | salary      | int     |
-- +-------------+---------+
-- employee_id is the primary key for this table.
-- Each row of this table indicates the salary of the employee whose ID is employee_id.
 

-- Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:

-- The employee's name is missing, or
-- The employee's salary is missing.
-- Return the result table ordered by employee_id in ascending order.
