# Write your MySQL query statement below
SELECT p.product_id, IFNULL(round(SUM(p.price * us.units)/ SUM(us.units),2),0) as average_price
FROM unitssold as us
RIGHT JOIN prices as p
ON us.product_id = p.product_id 
    AND us.purchase_date BETWEEN start_date and end_date
GROUP BY 1

