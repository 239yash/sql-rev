SELECT requester_id AS id,
(SELECT COUNT(*) 
 FROM RequestAccepted
 WHERE id = requester_id 
 OR id = accepter_id)
AS num
FROM RequestAccepted
ORDER BY num DESC LIMIT 1;




-- Table: RequestAccepted

-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | requester_id   | int     |
-- | accepter_id    | int     |
-- | accept_date    | date    |
-- +----------------+---------+
-- (requester_id, accepter_id) is the primary key (combination of columns with unique values) for this table.
-- This table contains the ID of the user who sent the request, the ID of the user who received the request, and the date when the request was accepted.
 

-- Write a solution to find the people who have the most friends and the most friends number.





