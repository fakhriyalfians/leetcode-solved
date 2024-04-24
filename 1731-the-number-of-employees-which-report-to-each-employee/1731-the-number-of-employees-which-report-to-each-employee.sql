SELECT t1.employee_id,
        t1.name,
        COUNT(t2.employee_id) AS reports_count,
        ROUND(AVG(t2.age)) as average_age
FROM employees as t1
JOIN employees as t2
ON t1.employee_id = t2.reports_to
GROUP BY 1
ORDER BY 1