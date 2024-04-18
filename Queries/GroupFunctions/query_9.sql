--9
SELECT
name
, surname
-- , score
FROM database_lesson.student
WHERE n_group = 2222
AND score = (SELECT 
			MAX(score)
			FROM database_lesson.student
			WHERE n_group = 2222
			GROUP BY (n_group))