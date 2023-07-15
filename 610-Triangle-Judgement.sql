SELECT *, 
IF ( x + y > z AND y + z > x AND z + x > y, "Yes", "No") as triangle
FROM Triangle;








-- Table: Triangle
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | x           | int  |
-- | y           | int  |
-- | z           | int  |
-- +-------------+------+
-- (x, y, z) is the primary key column for this table.
-- Each row of this table contains the lengths of three line segments.

-- Write an SQL query to report for every three line segments whether they can form a triangle.
