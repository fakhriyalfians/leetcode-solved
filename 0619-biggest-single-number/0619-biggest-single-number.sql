with q as (
Select max(num) as num
FROM mynumbers
GROUP BY num
HAVING COUNT(num) = 1)
SELECT max(num) as num from q

