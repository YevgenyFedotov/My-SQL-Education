-- 1. Выведите всех студентов, которые занимались или занимаются хотя бы 1 хобби. Выведите на экран Имя, Фамилию, Названию хобби, а также надпись «занимается»,  если студент продолжает заниматься хобби в данный момент или «закончил», если уже не занимает.
SELECT 
student.name
,student.surname
,hobby.name AS hobby_name
,CASE
WHEN student_hobby.date_finish IS NULL THEN 'Занимается'
ELSE 'Закончил'
END AS status
FROM database_lesson.student_hobby
LEFT JOIN database_lesson.student 
	ON student_hobby.student_id = student.id
LEFT JOIN database_lesson.hobby
	ON student_hobby.hobby_id = hobby.id

-- 2. Вывести студента/ов, который/ые имеют наибольший балл в заданной группе
WITH stud AS (SELECT
			 n_group,
			 MAX(score) AS max_score
			 FROM database_lesson.student
			 WHERE n_group = 11
			 GROUP BY (n_group))

SELECT 
name
,surname
,score
FROM database_lesson.student
WHERE n_group = (SELECT n_group
				FROM stud)
AND score = (SELECT max_score
			FROM stud)
ORDER BY (name, surname) ASC