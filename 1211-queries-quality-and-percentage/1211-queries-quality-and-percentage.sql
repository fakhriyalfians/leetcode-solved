# Write your MySQL query statement below
SELECT query_name, ROUND(SUM(rating/position)/count(query_name),2) AS quality,  
   ROUND(SUM( CASE WHEN rating < 3 THEN 1 ELSE 0 END)  / COUNT(*) * 100, 2) as poor_query_percentage
FROM queries
WHERE query_name IS NOT NULL
GROUP BY 
query_name

