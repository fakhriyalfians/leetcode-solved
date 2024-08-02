# Write your MySQL query statement below
WITH q AS (
    SELECT visited_on,
    SUM(amount) AS amount
    FROM customer
    GROUP BY 1
),
q1 AS (
    SELECT visited_on,
    SUM(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount
    FROM q
)
SELECT visited_on, amount, ROUND(amount/7, 2) AS Average_amount
FROM q1
WHERE visited_on > (Select MIN(visited_on) FROM q) + INTERVAL 5 DAY