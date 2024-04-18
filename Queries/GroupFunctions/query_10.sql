SELECT
name
, surname
, n_group
, score
FROM database_lesson.student
WHERE score = (SELECT
			  MAX(score)
			  FROM database_lesson.student as t1
			  WHERE t1.n_group = student.n_group
			  )

