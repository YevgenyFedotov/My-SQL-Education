--9
SELECT
name
, risk
, CASE 
	WHEN risk >= 0.8 THEN 'Очень высокий'
	WHEN risk >= 0.6 AND risk < 0.8 THEN 'Высокий'
	WHEN risk >= 0.4 AND risk < 0.6 THEN 'Средний'
	WHEN risk >= 0.2 AND risk < 0.4 THEN 'Низкий'
	WHEN risk < 0.2 THEN 'Очень низкий'
END
FROM database_lesson.hobby