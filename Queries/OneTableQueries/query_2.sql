--2
SELECT * 
FROM database_lesson.student
WHERE CAST (n_group AS VARCHAR(4)) LIKE '4%'