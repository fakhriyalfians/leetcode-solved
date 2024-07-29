# Write your MySQL query statement below
 (SELECT u.name AS results
 FROM users u 
 JOIN movierating mr ON u.user_id = mr.user_id
 GROUP BY u.name
 ORDER BY COUNT(mr.rating) DESC, u.name ASC
 LIMIT 1)

 UNION ALL

 (SELECT m.title FROM movies m 
 JOIN movierating mr ON m.movie_id = mr.movie_id
 WHERE DATE_FORMAT(created_at, '%Y-%m') = '2020-02'
 GROUP BY 1
 ORDER BY AVG(mr.rating) DESC, title ASC
 LIMIT 1
 )

