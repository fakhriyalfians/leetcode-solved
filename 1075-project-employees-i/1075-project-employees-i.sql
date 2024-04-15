# Write your MySQL query statement below
SELECT p.project_id, round(SUM(e.experience_years)/count(e.experience_years),2) as average_years 
FROM project as p
JOIN Employee as e
ON p.employee_id = e.employee_id
GROUP BY 1