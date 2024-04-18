--6
SELECT
substr(CAST (n_group AS VARCHAR(4)), 3, 2) AS n_group
, MAX(score)
FROM database_lesson.student
WHERE substr(CAST (n_group AS VARCHAR(4)), 1, 1) = '4'
GROUP BY(n_group)