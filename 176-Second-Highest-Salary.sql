# Write your MySQL query statement below
SELECT IFNULL(
    (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1, 1
    ),
    NULL
) AS SecondHighestSalary;



-- Table: Employee
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | id          | int  |
-- | salary      | int  |
-- +-------------+------+
-- id is the primary key column for this table.
-- Each row of this table contains information about the salary of an employee.
 
-- Find the second highest salary from the Employee table. If there is no second highest salary, return null.
-- The result format is in the following example.
