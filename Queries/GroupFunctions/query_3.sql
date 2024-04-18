--3
SELECT
surname
, COUNT(id)
FROM database_lesson.student
GROUP BY(surname)