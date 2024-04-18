--5
SELECT
substr(CAST (n_group AS VARCHAR(255)), 1, 1) AS course
, AVG(score)
FROM database_lesson.student
GROUP BY(course)