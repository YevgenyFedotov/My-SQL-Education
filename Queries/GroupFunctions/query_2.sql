--2
SELECT
n_group
, MAX(score)
FROM database_lesson.student
GROUP BY(n_group)