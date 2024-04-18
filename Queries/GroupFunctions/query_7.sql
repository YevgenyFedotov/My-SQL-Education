--7
SELECT
n_group
, AVG(score)
FROM database_lesson.student
GROUP BY(n_group)
HAVING AVG(score) <= 3.5
ORDER BY AVG(score) DESC