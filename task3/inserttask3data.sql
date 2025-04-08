-- === INSERT DATA TO MATCH UPDATED_task3.sql RESULTS ===
-- lesson_type

INSERT INTO lesson_type (id, name) VALUES
(1, 'individual'),
(2, 'group'),
(3, 'ensemble');

-- instructor

INSERT INTO person (person_id, first_name, last_name, person_number, street, zip, city)
VALUES 
(1, 'Albus', 'Dumbledore', '1111111111', '1 Magic St', '12345', 'Hogwarts'),
(2, 'Pomona', 'Sprout', '2222222222', '2 Herb Ln', '12345', 'Hogwarts'),
(3, 'Gilderoy', 'Lockhart', '3333333333', '3 Charm Ct', '12345', 'Hogwarts'),
(4, 'Minerva', 'McGonagall', '4444444444', '4 Transfig Ave', '12345', 'Hogwarts'),
(5, 'Alice', 'Dumbledore', '1111113111', '1 Magic St', '12345', 'Hogwarts');

INSERT INTO instructor (person_id, instrument, course_group_id, genre, availability) VALUES (1, 'Wand', 'A', 'Magic', NOW()), (2, 'Wand', 'B', 'Magic', NOW()), (3, 'Wand', 'C', 'Magic', NOW()), (4, 'Wand', 'D', 'Magic', NOW());
-- lesson
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 1, 3, 1, 'beginner', 'Room A', 'Rock', '2025-01-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 1, 4, 2, 'beginner', 'Room A', 'Rock', '2025-01-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (3, 1, 5, 3, 'beginner', 'Room A', 'Rock', '2025-01-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (4, 1, 3, 1, 'beginner', 'Room A', 'Jazz', '2025-02-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (5, 1, 4, 2, 'beginner', 'Room A', 'Jazz', '2025-02-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (6, 1, 5, 3, 'beginner', 'Room A', 'Jazz', '2025-02-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (7, 1, 3, 1, 'beginner', 'Room A', 'Punk', '2025-03-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (8, 1, 4, 2, 'beginner', 'Room A', 'Punk', '2025-03-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (9, 1, 5, 3, 'beginner', 'Room A', 'Punk', '2025-03-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (10, 1, 3, 1, 'beginner', 'Room A', 'Rock', '2025-04-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (11, 1, 4, 2, 'beginner', 'Room A', 'Rock', '2025-04-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (12, 1, 5, 3, 'beginner', 'Room A', 'Rock', '2025-04-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (13, 1, 3, 1, 'beginner', 'Room A', 'Jazz', '2025-05-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (14, 1, 4, 2, 'beginner', 'Room A', 'Jazz', '2025-05-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (15, 1, 5, 3, 'beginner', 'Room A', 'Jazz', '2025-05-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (16, 1, 3, 1, 'beginner', 'Room A', 'Punk', '2025-06-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (17, 1, 4, 2, 'beginner', 'Room A', 'Punk', '2025-06-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (18, 1, 5, 3, 'beginner', 'Room A', 'Punk', '2025-06-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (19, 1, 3, 1, 'beginner', 'Room A', 'Rock', '2025-07-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (20, 1, 4, 2, 'beginner', 'Room A', 'Rock', '2025-07-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (21, 1, 5, 3, 'beginner', 'Room A', 'Rock', '2025-07-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (22, 1, 3, 1, 'beginner', 'Room A', 'Jazz', '2025-08-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (23, 1, 4, 2, 'beginner', 'Room A', 'Jazz', '2025-08-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (24, 1, 5, 3, 'beginner', 'Room A', 'Jazz', '2025-08-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (25, 1, 3, 1, 'beginner', 'Room A', 'Punk', '2025-09-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (26, 1, 4, 2, 'beginner', 'Room A', 'Punk', '2025-09-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (27, 1, 5, 3, 'beginner', 'Room A', 'Punk', '2025-09-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (28, 1, 3, 1, 'beginner', 'Room A', 'Rock', '2025-10-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (29, 1, 4, 2, 'beginner', 'Room A', 'Rock', '2025-10-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (30, 1, 5, 3, 'beginner', 'Room A', 'Rock', '2025-10-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (31, 1, 3, 1, 'beginner', 'Room A', 'Jazz', '2025-11-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (32, 1, 4, 2, 'beginner', 'Room A', 'Jazz', '2025-11-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (33, 1, 5, 3, 'beginner', 'Room A', 'Jazz', '2025-11-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (34, 1, 3, 1, 'beginner', 'Room A', 'Punk', '2025-12-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (35, 1, 4, 2, 'beginner', 'Room A', 'Punk', '2025-12-01', 'Guitar');
INSERT INTO lesson (lesson_id, min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (36, 1, 5, 3, 'beginner', 'Room A', 'Punk', '2025-12-01', 'Guitar');
-- lesson_student
INSERT INTO student (person_id) SELECT person_id FROM person WHERE person_id BETWEEN 1 AND 5;

INSERT INTO lesson_student (student_id, lesson_id) VALUES (5, 1), (2, 1), (3, 2), (4, 3), (1, 3), (2, 3);
-- lesson_instructor
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (1, 1);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (2, 2);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (3, 3);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (4, 4);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (5, 1);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (6, 2);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (7, 3);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (8, 4);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (9, 1);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (10, 2);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (11, 3);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (12, 4);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (13, 1);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (14, 2);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (15, 3);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (16, 4);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (17, 1);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (18, 2);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (19, 3);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (20, 4);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (21, 1);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (22, 2);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (23, 3);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (24, 4);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (25, 1);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (26, 2);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (27, 3);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (28, 4);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (29, 1);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (30, 2);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (31, 3);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (32, 4);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (33, 1);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (34, 2);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (35, 3);
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (36, 4);
-- contact_person & students
INSERT INTO contact_person (person_id) VALUES (1), (2), (3);

INSERT INTO student (person_id, contact_person_id) VALUES
(5, 1), (3, 1),
(5, 2), (1, 2);