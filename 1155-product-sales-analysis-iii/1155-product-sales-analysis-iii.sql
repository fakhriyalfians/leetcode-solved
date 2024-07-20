# Write your MySQL query statement below
with q as(
    SELECT product_id, MIN(year) FROM sales GROUP BY 1
) SELECT product_id, year as first_year, quantity, price FROM sales WHERE (product_id,year) IN (SELECT * FROM q)