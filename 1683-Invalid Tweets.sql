# Write your MySQL query statement below
SELECT tweet_id FROM Tweets
WHERE LENGTH(content) > 15;











-- Table: Tweets

-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | tweet_id       | int     |
-- | content        | varchar |
-- +----------------+---------+
-- In SQL, tweet_id is the primary key for this table.
-- This table contains all the tweets in a social media app.
 

-- Find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
