# Write your MySQL query statement below
SELECT user_id,
    count(follower_id) as followers_count
FROM followers 
GROUP BY 1
ORDER BY 1