BEGIN;

DROP TABLE IF EXISTS database_lesson.student_hobby;
DROP TABLE IF EXISTS database_lesson.student;
DROP TABLE IF EXISTS database_lesson.hobby;

CREATE TABLE IF NOT EXISTS database_lesson.student (
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    surname    VARCHAR(255) NOT NULL,
    n_group    INTEGER NOT NULL,
    score      NUMERIC(3,2),
    address    VARCHAR(3000),
    date_birth DATE
);

CREATE TABLE IF NOT EXISTS database_lesson.hobby (
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(255) NOT NULL,
    risk  NUMERIC(4,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS database_lesson.student_hobby (
    id          SERIAL PRIMARY KEY,
    student_id  INTEGER NOT NULL REFERENCES database_lesson.student(id) ON DELETE CASCADE,
    hobby_id    INTEGER NOT NULL REFERENCES database_lesson.hobby(id) ON DELETE CASCADE,
    date_start  TIMESTAMP NOT NULL,
    date_finish DATE
);

/*
    Добавление данных
*/
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (1, 'Иван', 'Иванов', 2222, '09-09-1999', 4.02);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (2, 'Михаил', 'Михайлов', 4032, '03-12-1997', 3.25);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (3, 'Виктория', 'Николаева', 4011, '11-02-1994', 4.23);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (4, 'Нуль', 'Нулёвый', 2222, '04-05-1998', 4.23);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (5, 'Евгения', 'Сидорова', 2222, '04-05-1996', 3.59);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (6, 'Сергей', 'Иванцов', 3011, '12-04-1995', 3.85);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (7, 'Николай', 'Борисов', 3011, '12-08-2000', 4.22);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (8, 'Виктория', 'Воронцов', 3011, '11-11-1999', 4.63);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (9, 'Марина', 'Кузнецов', 3011, '01-05-1998', 3.11);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (10, 'Джон', 'Уик', 3011, null, 3.45);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (11, 'Виктор', 'Понедельник', 3011, '11-03-1994', 3.98);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (12, 'Алиса', 'Васильченко', 2222, null, 2.98);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (13, 'Артём', 'Иван', 2222, '05-08-1999', 4.03);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (14, 'Шарлотта', 'Калла', 2222, '05-03-1996', 4.67);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (15, 'Юлия', 'Белорукова', 4011, '11-08-1997', 3.58);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (16, 'Татьяна', 'Акимова', 4011, '01-03-1995', 4.98);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (17, 'Ульяна', 'Кайшева', 4011, '03-03-1998', 4.37);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (19, 'Никита', 'Крюков', 4011, '08-04-1999', 2.55);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (20, 'Иван', 'Шаповалов', 4032, '04-09-2002', 2);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (21, 'Анастасия', 'Овсянникова', 4032, '12-01-1998', 4.25);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (22, 'Людмила', 'Иванова', 4032, '05-02-1993', 3.65);
INSERT INTO database_lesson.student (id, name, surname, n_group, date_birth, score) VALUES (23, 'Валентина', 'Сидорова', 4032, null, 3.76);


INSERT INTO database_lesson.hobby (id, risk, name) VALUES (2, 0.3, 'Теннис');
INSERT INTO database_lesson.hobby (id, risk, name) VALUES (5, 0.4, 'Лыжные');
INSERT INTO database_lesson.hobby (id, risk, name) VALUES (7, 0.2, 'Фехтование');
INSERT INTO database_lesson.hobby (id, risk, name) VALUES (1, 0.8, 'Футбол');
INSERT INTO database_lesson.hobby (id, risk, name) VALUES (3, 0.5, 'Баскетбол');
INSERT INTO database_lesson.hobby (id, risk, name) VALUES (4, 0.4, 'Биатлон');
INSERT INTO database_lesson.hobby (id, risk, name) VALUES (6, 0.6, 'Волейбол');
INSERT INTO database_lesson.hobby (id, risk, name) VALUES (8, 0, 'Музыка');


INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (1, 2, 3, '03-05-2004', null);
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (2, 2, 5, '02-08-2009', null);
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (3, 3, 4, '11-02-1993', '12-01-2016');
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (4, 4, 5, '03-04-2004', '05-03-2006');
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (5, 5, 8, '06-08-2014', '08-09-2017');
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (6, 6, 7, '03-09-2018', '03--5-2017');
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (7, 7, 4, '04-07-2017', null);
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (8, 8, 2, '11-09-2018', null);
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (9, 8, 1, '02-08-2019', '03-02-2019');
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (10, 9, 4, '12-09-2009', '12-04-2009');
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (11, 9, 5, '06-08-2013', '09-05-2018');
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (12, 11, 6, '06-08-2014', null);
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (13, 12, 7, '01-03-1999', '04-04-2004');
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (14, 1, 1, '07-09-2017', null);
INSERT INTO database_lesson.student_hobby (id, student_id, hobby_id, date_start, date_finish) VALUES (15, 16, 5, '02-03-2018', null);

COMMIT;