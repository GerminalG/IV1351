-- === FULL DATA INSERT FOR SOUNDGOOD DB ===
-- From: insert_person_core_data.sql
-- === INSERT: PERSON ===

-- === INSERT: 20 PERSONS WHO FILLED OUT THE FORM ===
INSERT INTO person (first_name, last_name, person_number, street, zip, city) VALUES
('Danielle', 'Johnson', '5798893426', '32181 Johnson Course Apt. 389', '03979', 'Lake Debra'),
('Amy', 'Robinson', '2184792138', '26542 Susan Junction Apt. 161', '47553', 'Cassandraton'),
('Jessica', 'Herrera', '9521972987', '84959 Janet Cape Apt. 413', '13739', 'Ramirezstad'),
('Francisco', 'Kelly', '0018520239', '192 Frank Light Suite 835', '07832', 'Port Antonio'),
('Leslie', 'Adams', '4347120713', '537 Wilkerson Row', '60643', 'West Donald'),
('Julie', 'Ryan', '2285444049', '653 William Course Apt. 122', '89693', 'Carlsonfurt'),
('Patrick', 'Ferrell', '8416419212', '018 Mack Junctions Apt. 462', '59971', 'Lake Nancyview'),
('Teresa', 'Gill', '0252204843', '489 Eric Track', '21675', 'New Mariotown'),
('Daniel', 'Cox', '3781456882', '03911 Cabrera Trace Apt. 278', '22144', 'Allisonchester'),
('Tamara', 'Hickman', '3221166336', '465 Lam Mission', '16361', 'East Caleb'),
('Andrew', 'Spencer', '4239447652', '10310 Jones Freeway', '37001', 'Lewisberg'),
('Jennifer', 'Khan', '8219518073', '76311 Gomez Loop Suite 010', '53273', 'Laurenville'),
('John', 'Lee', '8304948334', '62473 Scott Wall Apt. 080', '12725', 'East Richard'),
('Timothy', 'Hancock', '4357295896', '60647 Henderson Street', '73346', 'Mooreport'),
('Jeff', 'Brown', '7157876874', '500 Shaw Walk', '70116', 'North Susan'),
('Christopher', 'Lopez', '7002894955', '361 Beth Canyon', '81684', 'South Dianeshire'),
('Alexandra', 'Donovan', '3646749887', '534 Anderson Rue', '39822', 'Stewartland'),
('Albert', 'Howell', '5176513235', '83842 Ibarra Gardens', '48935', 'Ericside'),
('Jade', 'Carr', '8412007759', '841 Joseph Coves', '97811', 'West Juan'),
('Jason', 'Cooper', '3979830720', '740 Cynthia Village Suite 005', '17647', 'Evanmouth');

-- === INSERT: EMAIL, PHONE, AND RELATIONS ===

-- === INSERT: EMAILS ===

INSERT INTO email (email_id, email) VALUES

('danielle.johnson@example.com'),
('amy.robinson@example.com'),
('jessica.herrera@example.com'),
('francisco.kelly@example.com'),
('leslie.adams@example.com'),
('julie.ryan@example.com'),
('patrick.ferrell@example.com'),
('teresa.gill@example.com'),
('daniel.cox@example.com'),
('tamara.hickman@example.com'),
('andrew.spencer@example.com'),
('jennifer.khan@example.com'),
('john.lee@example.com'),
('timothy.hancock@example.com'),
('jeff.brown@example.com'),
('christopher.lopez@example.com'),
('alexandra.donovan@example.com'),
('albert.howell@example.com'),
('jade.carr@example.com'),
('jason.cooper@example.com');



-- === INSERT: PHONES ===

INSERT INTO phone (phone) VALUES

('+168011280'),
('+126204505'),
('+115869232'),
('2160733754'),
('+136541458'),
('0014019655'),
('6934060883'),
('(615)95148'),
('+123662994'),
('4436995777'),
('+138721489'),
('0379176936'),
('6320163287'),
('2788957986'),
('0017743487'),
('5812236231'),
('(036)69096'),
('0018937346'),
('(980)69901'),
('2046537556');



-- === INSERT: PERSON_EMAIL ===

INSERT INTO person_email (email_id, person_id) VALUES (1, 1);

INSERT INTO person_email (email_id, person_id) VALUES (2, 2);

INSERT INTO person_email (email_id, person_id) VALUES (3, 3);

INSERT INTO person_email (email_id, person_id) VALUES (4, 4);

INSERT INTO person_email (email_id, person_id) VALUES (5, 5);

INSERT INTO person_email (email_id, person_id) VALUES (6, 6);

INSERT INTO person_email (email_id, person_id) VALUES (7, 7);

INSERT INTO person_email (email_id, person_id) VALUES (8, 8);

INSERT INTO person_email (email_id, person_id) VALUES (9, 9);

INSERT INTO person_email (email_id, person_id) VALUES (10, 10);

INSERT INTO person_email (email_id, person_id) VALUES (11, 11);

INSERT INTO person_email (email_id, person_id) VALUES (12, 12);

INSERT INTO person_email (email_id, person_id) VALUES (13, 13);

INSERT INTO person_email (email_id, person_id) VALUES (14, 14);

INSERT INTO person_email (email_id, person_id) VALUES (15, 15);

INSERT INTO person_email (email_id, person_id) VALUES (16, 16);

INSERT INTO person_email (email_id, person_id) VALUES (17, 17);

INSERT INTO person_email (email_id, person_id) VALUES (18, 18);

INSERT INTO person_email (email_id, person_id) VALUES (19, 19);

INSERT INTO person_email (email_id, person_id) VALUES (20, 20);



-- === INSERT: PERSON_PHONE ===

INSERT INTO person_phone (phone_id, person_id) VALUES (1, 1);

INSERT INTO person_phone (phone_id, person_id) VALUES (2, 2);

INSERT INTO person_phone (phone_id, person_id) VALUES (3, 3);

INSERT INTO person_phone (phone_id, person_id) VALUES (4, 4);

INSERT INTO person_phone (phone_id, person_id) VALUES (5, 5);

INSERT INTO person_phone (phone_id, person_id) VALUES (6, 6);

INSERT INTO person_phone (phone_id, person_id) VALUES (7, 7);

INSERT INTO person_phone (phone_id, person_id) VALUES (8, 8);

INSERT INTO person_phone (phone_id, person_id) VALUES (9, 9);

INSERT INTO person_phone (phone_id, person_id) VALUES (10, 10);

INSERT INTO person_phone (phone_id, person_id) VALUES (11, 11);

INSERT INTO person_phone (phone_id, person_id) VALUES (12, 12);

INSERT INTO person_phone (phone_id, person_id) VALUES (13, 13);

INSERT INTO person_phone (phone_id, person_id) VALUES (14, 14);

INSERT INTO person_phone (phone_id, person_id) VALUES (15, 15);

INSERT INTO person_phone (phone_id, person_id) VALUES (16, 16);

INSERT INTO person_phone (phone_id, person_id) VALUES (17, 17);

INSERT INTO person_phone (phone_id, person_id) VALUES (18, 18);

INSERT INTO person_phone (phone_id, person_id) VALUES (19, 19);

INSERT INTO person_phone (phone_id, person_id) VALUES (20, 20);

-- From: insert_contact_person.sql
INSERT INTO contact_person (person_id) VALUES (1);

INSERT INTO contact_person (person_id) VALUES (2);

INSERT INTO contact_person (person_id) VALUES (3);

INSERT INTO contact_person (person_id) VALUES (4);

INSERT INTO contact_person (person_id) VALUES (5);

-- From: insert_students.sql
INSERT INTO student (person_id, contact_person_id) VALUES (6, 1);

INSERT INTO student (person_id, contact_person_id) VALUES (7, 5);

INSERT INTO student (person_id, contact_person_id) VALUES (8, 5);

INSERT INTO student (person_id, contact_person_id) VALUES (9, 2);

INSERT INTO student (person_id, contact_person_id) VALUES (10, 1);

INSERT INTO student (person_id, contact_person_id) VALUES (11, 4);

INSERT INTO student (person_id, contact_person_id) VALUES (12, 1);

INSERT INTO student (person_id, contact_person_id) VALUES (13, 5);

INSERT INTO student (person_id, contact_person_id) VALUES (14, 1);

INSERT INTO student (person_id, contact_person_id) VALUES (15, 4);

-- From: insert_guardians.sql
INSERT INTO guardian (person_id) VALUES (16);

INSERT INTO guardian (person_id) VALUES (17);

INSERT INTO guardian (person_id) VALUES (18);

-- From: insert_guardian_student.sql
INSERT INTO guardian_student (guardian_id, student_id, relationship) VALUES (16, 6, 'Parent');

INSERT INTO guardian_student (guardian_id, student_id, relationship) VALUES (17, 6, 'Parent');

INSERT INTO guardian_student (guardian_id, student_id, relationship) VALUES (18, 8, 'Parent');

-- From: insert_instructors.sql
INSERT INTO instructor (person_id, instrument, course_group_id, genre, availability) VALUES (19, 'Guitar', 'A1', 'Jazz', CURRENT_TIMESTAMP);

INSERT INTO instructor (person_id, instrument, course_group_id, genre, availability) VALUES (20, 'Guitar', 'A1', 'Jazz', CURRENT_TIMESTAMP);

-- From: insert_lessons.sql
INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 6, 'individual', 'Beginner', 'Room B', 'Jazz', CURRENT_DATE + INTERVAL '12 days', 'Again');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 8, 'group', 'Beginner', 'Room C', 'Blues', CURRENT_DATE + INTERVAL '20 days', 'End');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 6, 'individual', 'Beginner', 'Room E', 'Jazz', CURRENT_DATE + INTERVAL '11 days', 'They');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 6, 'ensemble', 'Beginner', 'Room D', 'Blues', CURRENT_DATE + INTERVAL '30 days', 'Beat');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 6, 'ensemble', 'Beginner', 'Room E', 'Rock', CURRENT_DATE + INTERVAL '27 days', 'Again');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 7, 'individual', 'Beginner', 'Room A', 'Pop', CURRENT_DATE + INTERVAL '21 days', 'Statement');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 4, 'ensemble', 'Beginner', 'Room A', 'Blues', CURRENT_DATE + INTERVAL '23 days', 'Beat');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 6, 'ensemble', 'Beginner', 'Room C', 'Jazz', CURRENT_DATE + INTERVAL '30 days', 'Statement');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 6, 'individual', 'Beginner', 'Room C', 'Classical', CURRENT_DATE + INTERVAL '8 days', 'After');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 7, 'individual', 'Beginner', 'Room E', 'Classical', CURRENT_DATE + INTERVAL '30 days', 'Many');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 4, 'group', 'Beginner', 'Room E', 'Rock', CURRENT_DATE + INTERVAL '24 days', 'After');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 4, 'group', 'Beginner', 'Room D', 'Pop', CURRENT_DATE + INTERVAL '19 days', 'Notice');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 3, 'individual', 'Beginner', 'Room D', 'Rock', CURRENT_DATE + INTERVAL '17 days', 'Statement');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 5, 'ensemble', 'Beginner', 'Room D', 'Pop', CURRENT_DATE + INTERVAL '24 days', 'Allow');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 6, 'individual', 'Beginner', 'Room B', 'Blues', CURRENT_DATE + INTERVAL '22 days', 'Allow');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 3, 'group', 'Beginner', 'Room E', 'Classical', CURRENT_DATE + INTERVAL '1 days', 'Somebody');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 6, 'individual', 'Beginner', 'Room D', 'Pop', CURRENT_DATE + INTERVAL '30 days', 'Statement');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 6, 'group', 'Beginner', 'Room A', 'Pop', CURRENT_DATE + INTERVAL '4 days', 'Those');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (2, 7, 'ensemble', 'Beginner', 'Room D', 'Classical', CURRENT_DATE + INTERVAL '11 days', 'Beat');

INSERT INTO lesson (min_student, max_student, lesson_type, course_level, room, genre, time, instrument) VALUES (1, 8, 'ensemble', 'Beginner', 'Room A', 'Blues', CURRENT_DATE + INTERVAL '20 days', 'End');

-- From: insert_lesson_student.sql
INSERT INTO lesson_student (student_id, lesson_id) VALUES (1, 7);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (2, 6);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (2, 15);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (3, 4);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (3, 14);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (4, 20);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (5, 3);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (6, 14);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (7, 3);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (7, 18);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (8, 14);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (9, 10);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (9, 12);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (10, 13);

INSERT INTO lesson_student (student_id, lesson_id) VALUES (10, 12);

-- From: insert_lesson_instructor.sql
INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (1, 2);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (2, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (3, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (4, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (5, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (6, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (7, 2);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (8, 2);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (9, 2);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (10, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (11, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (12, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (13, 2);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (14, 2);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (15, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (16, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (17, 2);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (18, 1);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (19, 2);

INSERT INTO lesson_instructor (lesson_id, instructor_id) VALUES (20, 2);
