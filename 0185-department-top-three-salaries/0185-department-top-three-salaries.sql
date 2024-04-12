# Write your MySQL query statement below
WITH q as (SELECT e.name as Employee, d.name as Department, e.salary AS Salary,
DENSE_RANK() OVER (partition by e.departmentId order by salary DESC) as rnk
FROM employee as e
JOIN department as d
ON e.departmentId = d.id)
Select Department, Employee, Salary
FROM q
Where rnk <= 3

