SELECT t1.id
FROM weather t1
JOIN weather t2
ON DATEDIFF(t1.recorddate,t2.recorddate) = 1
WHERE t1.temperature > t2.temperature