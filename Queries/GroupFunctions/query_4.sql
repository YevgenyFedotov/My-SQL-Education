--4
SELECT
extract(year FROM date_birth) AS year_birth
, COUNT(id)
FROM database_lesson.student
GROUP BY(year_birth)