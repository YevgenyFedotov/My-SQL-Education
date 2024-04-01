--9.
UPDATE database_lesson.hobby
SET name = CASE 
WHEN name = 'Футбол' THEN 'Бальные танцы'
WHEN name = 'Баскетбол' THEN 'Вышивание крестиком'
END
WHERE name = 'Футбол' OR name = 'Баскетбол'
