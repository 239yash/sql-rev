# Write your MySQL query statement below
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;







Table: ActorDirector
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| actor_id    | int     |
| director_id | int     |
| timestamp   | int     |
+-------------+---------+
In SQL, timestamp is the primary key column for this table.
  
Find all the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.
Return the result table in any order.
