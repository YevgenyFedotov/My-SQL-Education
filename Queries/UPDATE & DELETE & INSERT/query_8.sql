--8.
WITH stud_id AS (SELECT student_id 
			  FROM (SELECT
					student_id
					, hobby_id
					, row_number() OVER (PARTITION BY student_id, hobby_id) AS rows_number
					FROM database_lesson.student_hobby) AS stud_temp
			 		WHERE rows_number > 1)
--SELECT * 
DELETE
FROM database_lesson.student_hobby
WHERE student_id IN (SELECT * FROM stud_id)
AND date_start IN (SELECT
				  MIN(date_start)
				  FROM database_lesson.student_hobby
				  WHERE student_id IN (SELECT * FROM stud_id)
				  GROUP BY (student_id))