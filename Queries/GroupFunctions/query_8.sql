--8
SELECT
n_group
, COUNT(id)
, AVG(score)
, MIN(score)
, MAX(score)
FROM database_lesson.student
GROUP BY(n_group)