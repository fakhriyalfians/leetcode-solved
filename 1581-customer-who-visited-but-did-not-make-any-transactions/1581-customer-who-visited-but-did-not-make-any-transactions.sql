# Write your MySQL query statement 
SELECT v.customer_id, count(v.visit_id) as count_no_trans
FROM visits as v
LEFT JOIN transactions as t
ON t.visit_id = v.visit_id
WHERE t.visit_id IS NULL
GROUP BY customer_id
