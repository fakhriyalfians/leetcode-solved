# Write your MySQL query statement below
SELECT p.product_name,
    SUM(o.unit) as unit
FROM products as p
JOIN orders as o
ON p.product_id = o.product_id
WHERE month(order_date) = 02 AND year(order_date)=2020
GROUP BY 1
HAVING SUM(o.unit) >= 100