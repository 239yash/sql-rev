# Write your MySQL query statement below
SELECT player_id, MIN(event_date) as first_login
FROM Activity
GROUP BY player_id;







-- Table: Activity
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | player_id    | int     |
-- | device_id    | int     |
-- | event_date   | date    |
-- | games_played | int     |
-- +--------------+---------+
-- In SQL, (player_id, event_date) is the primary key of this table.
-- This table shows the activity of players in some games.
-- Each row records a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.

-- Find the first login date for each player.
