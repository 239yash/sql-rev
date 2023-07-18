# Write your MySQL query statement below
SELECT DISTINCT(author_id) AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id;







-- Table: Views
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | article_id    | int     |
-- | author_id     | int     |
-- | viewer_id     | int     |
-- | view_date     | date    |
-- +---------------+---------+
-- The table may have duplicate rows (In other words, there is no primary key for this table in SQL).
-- Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
-- Note that equal author_id and viewer_id indicate the same person.
 
-- Find all the authors that viewed at least one of their own articles.
-- Return the result table sorted by id in ascending order.
