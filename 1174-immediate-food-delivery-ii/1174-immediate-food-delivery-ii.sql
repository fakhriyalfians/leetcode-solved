# Write your MySQL query statement below
WITH q as (SELECT customer_id,
           min(order_date) AS first_order
FROM delivery
           GROUP BY customer_id)
SELECT 
ROUND(
    SUM(
        CASE
            WHEN order_date =  customer_pref_delivery_date THEN 1 ELSE 0 END) * 100 / COUNT(DISTINCT customer_id), 2) AS immediate_percentage
FROM delivery
WHERE (customer_id, order_date) IN (Select customer_id, first_order FROM q)    
 