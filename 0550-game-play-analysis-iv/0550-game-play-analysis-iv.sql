# Write your MySQL query statement below

with q AS (SELECT player_id,
    MIN(event_date) AS event_date
FROM activity
GROUP BY 1)
SELECT ROUND(COUNT(DISTINCT player_id)/ (SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM activity
WHERE (player_id, DATE_SUB(event_date, INTERVAL 1 DAY)) IN (SELECT * FROM q)

