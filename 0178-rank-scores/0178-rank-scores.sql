# Write your MySQL query statement below
SELECT
  Score,
  (SELECT count(distinct Score) FROM Scores WHERE Score >= s.Score) as 'Rank'
FROM Scores s
ORDER BY Score desc