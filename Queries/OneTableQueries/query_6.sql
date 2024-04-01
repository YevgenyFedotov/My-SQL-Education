--6
SELECT --*
hobby_id
, student_id
FROM database_lesson.student_hobby
WHERE date_start BETWEEN '2004-01-01' AND '2006-01-01'
AND date_finish IS NULL