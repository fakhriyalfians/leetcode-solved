SELECT contest_id,
    ROUND(COUNT(DISTINCT user_id)*100 / (
        SELECT COUNT(DISTINCT user_id) as uid
        FROM users), 2) as percentage
FROM register
GROUP BY 1
ORDER BY 2 DESC, 1