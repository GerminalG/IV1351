-- SQL Script: Soundgood Music School Database Creation with Sample Data

-- DROP existing tables to avoid conflicts (for re-running the script)
DROP TABLE IF EXISTS person_phone CASCADE;
DROP TABLE IF EXISTS person_email CASCADE;
DROP TABLE IF EXISTS siblings CASCADE;
DROP TABLE IF EXISTS sibling_discount CASCADE;
DROP TABLE IF EXISTS student_invoice CASCADE;
DROP TABLE IF EXISTS instructor_salary CASCADE;
DROP TABLE IF EXISTS enrollment CASCADE;
DROP TABLE IF EXISTS booking_request CASCADE;
DROP TABLE IF EXISTS schedule CASCADE;
DROP TABLE IF EXISTS administrative_staff CASCADE;
DROP TABLE IF EXISTS instructor CASCADE;
DROP TABLE IF EXISTS student CASCADE;
DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS instrument_lease CASCADE;
DROP TABLE IF EXISTS instrument CASCADE;
DROP TABLE IF EXISTS soundgood_music_school CASCADE;
DROP TABLE IF EXISTS email CASCADE;
DROP TABLE IF EXISTS phone CASCADE;
DROP TABLE IF EXISTS preference CASCADE;

-- CREATE TABLES

-- Table: soundgood_music_school
CREATE TABLE soundgood_music_school (
    available_spot INT NOT NULL,
    street VARCHAR(500) NOT NULL,
    zip VARCHAR(500) NOT NULL,
    city VARCHAR(500) NOT NULL
);

-- Table: instrument
CREATE TABLE instrument (
    id SERIAL PRIMARY KEY,
    instrument VARCHAR(500) NOT NULL,
    brand VARCHAR(500) NOT NULL,
    amount_in_stock INT NOT NULL,
    total_amount INT NOT NULL,
    price FLOAT(10) NOT NULL
);

-- Table: person
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(500) NOT NULL,
    last_name VARCHAR(500) NOT NULL,
    person_number VARCHAR(15) NOT NULL UNIQUE,
    street VARCHAR(500) NOT NULL,
    zip VARCHAR(500) NOT NULL,
    city VARCHAR(500) NOT NULL
);

-- Table: student
CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    contact_person_name VARCHAR(500),
    relationship VARCHAR(500),
    rental_instrument_1 VARCHAR(500),
    rental_instrument_2 VARCHAR(500),
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE
);

-- Table: instructor
CREATE TABLE instructor (
    id SERIAL PRIMARY KEY,
    instrument VARCHAR(500),
    course_group VARCHAR(500),
    genre VARCHAR(500),
    availability TIMESTAMP(6),
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE
);

-- Table: administrative_staff
CREATE TABLE administrative_staff (
    staff_id VARCHAR(500) PRIMARY KEY,
    person_id INT NOT NULL REFERENCES person(id)
);

-- Table: schedule
CREATE TABLE schedule (
    id SERIAL PRIMARY KEY,
    min_student INT NOT NULL,
    max_student INT NOT NULL,
    lesson_type VARCHAR(500) NOT NULL,
    course_level VARCHAR(500) NOT NULL,
    room VARCHAR(500) NOT NULL,
    genre VARCHAR(500),
    month VARCHAR(500),
    instrument VARCHAR(500),
    price FLOAT(50) NOT NULL
);

-- Table: booking_request
CREATE TABLE booking_request (
    id SERIAL PRIMARY KEY,
    student_id INT NOT NULL REFERENCES student(id),
    schedule_id INT NOT NULL REFERENCES schedule(id)
);

-- Table: enrollment
CREATE TABLE enrollment (
    id SERIAL PRIMARY KEY,
    student_id INT NOT NULL REFERENCES student(id),
    booking_request_id INT NOT NULL REFERENCES booking_request(id),
    instructor_id INT NOT NULL REFERENCES instructor(id)
);

-- Table: instructor_salary
CREATE TABLE instructor_salary (
    instructor_id INT NOT NULL REFERENCES instructor(id),
    enrollment_id INT NOT NULL REFERENCES enrollment(id),
    total_income DOUBLE PRECISION,
    PRIMARY KEY (instructor_id, enrollment_id)
);

-- Table: student_invoice
CREATE TABLE student_invoice (
    id SERIAL PRIMARY KEY,
    enrollment_id INT NOT NULL REFERENCES enrollment(id),
    instrument_lease_id INT,
    lesson_cost_sum FLOAT(50),
    instrument_rental_cost_sum FLOAT(50),
    total_amount FLOAT(50)
);

-- Table: instrument_lease
CREATE TABLE instrument_lease (
    id SERIAL PRIMARY KEY,
    instrument VARCHAR(500),
    starting_date TIMESTAMP(6) NOT NULL,
    max_lease_date TIMESTAMP(6) NOT NULL,
    student_id INT NOT NULL REFERENCES student(id),
    instrument_id INT NOT NULL REFERENCES instrument(id)
);

CREATE TABLE sibling_discount (
    student_id INT NOT NULL REFERENCES student(id),
    discount_rate NUMERIC(5, 2),
    PRIMARY KEY (student_id)
);

-- Table: siblings
CREATE TABLE siblings (
    student_id INT NOT NULL REFERENCES student(id),
    sibling VARCHAR(500) NOT NULL
);

-- Table: email
CREATE TABLE email (
    id SERIAL PRIMARY KEY,
    email VARCHAR(500) NOT NULL UNIQUE
);

-- Table: phone
CREATE TABLE phone (
    id SERIAL PRIMARY KEY,
    phone VARCHAR(500) NOT NULL UNIQUE
);

-- Table: person_email
CREATE TABLE person_email (
    email_id INT NOT NULL REFERENCES email(id),
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE,
    PRIMARY KEY (email_id, person_id)
);

-- Table: person_phone
CREATE TABLE person_phone (
    phone_id INT NOT NULL REFERENCES phone(id),
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE,
    PRIMARY KEY (phone_id, person_id)
);

-- Table: preference
CREATE TABLE preference (
    person_id INT NOT NULL REFERENCES person(id),
    instrument VARCHAR(500),
    course_level VARCHAR(500),
    course_type VARCHAR(500),
    PRIMARY KEY (person_id)
);

-- INSERT SAMPLE DATA

INSERT INTO soundgood_music_school (available_spot, street, zip, city)
VALUES 
(20, '123 Music St', '10110', 'Stockholm'),
(15, '45 Harmony Ave', '10220', 'Gothenburg');

-- Table: instrument
INSERT INTO instrument (instrument, brand, amount_in_stock, total_amount, price)
VALUES 
('Guitar', 'Yamaha', 10, 20, 5000.0),
('Piano', 'Roland', 5, 10, 15000.0),
('Violin', 'Stradivarius', 3, 5, 25000.0);

-- Table: person
INSERT INTO person (first_name, last_name, person_number, street, zip, city)
VALUES 
('Alice', 'Johnson', '19900101-1234', '10 Harmony St', '10110', 'Stockholm'),
('Bob', 'Smith', '19850515-5678', '22 Music Rd', '10220', 'Gothenburg'),
('Charlie', 'Brown', '19731212-9012', '5 Melody Ln', '10130', 'Malmo');

-- Table: student
INSERT INTO student (contact_person_name, relationship, rental_instrument_1, rental_instrument_2, person_id)
VALUES 
('Anna Johnson', 'Mother', 'Guitar', NULL, 1),
(NULL, NULL, NULL, NULL, 2),
('Robert Brown', 'Father', 'Piano', 'Violin', 3);

-- Table: instructor
INSERT INTO instructor (instrument, course_group, genre, availability, person_id)
VALUES 
('Guitar', 'Beginner', 'Classical', '2025-01-01 09:00:00', 1),
('Violin', 'Intermediate', 'Jazz', '2025-01-02 10:00:00', 2),
('Piano', 'Advanced', 'Pop', '2025-01-03 11:00:00', 3);

-- Table: administrative_staff
INSERT INTO administrative_staff (staff_id, person_id)
VALUES 
('S001', 1),
('S002', 2),
('S003', 3);

-- Table: schedule
INSERT INTO schedule (min_student, max_student, lesson_type, course_level, room, genre, time, instrument, price)
VALUES 
INSERT INTO schedule (min_student, max_student, lesson_type, course_level, room, genre, time, instrument, price)
VALUES
(1, 5, 'Individual', 'Beginner', 'Room A', 'Classical', '2025-01-05 10:00:00', 'Guitar', 200.0),
(3, 10, 'Group', 'Intermediate', 'Room B', 'Jazz', '2025-01-06 11:00:00', 'Piano', 300.0),
(1, 3, 'Ensemble', 'Advanced', 'Room C', 'Pop', '2025-01-07 12:00:00', 'Violin', 400.0),
(2, 8, 'Group', 'Intermediate', 'Room D', 'Rock', '2025-01-08 13:00:00', 'Drum', 250.0),
(1, 4, 'Individual', 'Beginner', 'Room E', 'Classical', '2025-01-09 14:00:00', 'Flute', 220.0),
(3, 12, 'Group', 'Advanced', 'Room F', 'Blues', '2025-01-10 15:00:00', 'Saxophone', 300.0),
(2, 6, 'Individual', 'Beginner', 'Room G', 'Classical', '2025-01-11 16:00:00', 'Clarinet', 240.0),
(3, 8, 'Group', 'Intermediate', 'Room H', 'Jazz', '2025-01-12 17:00:00', 'Trumpet', 280.0),
(1, 5, 'Individual', 'Advanced', 'Room I', 'Classical', '2025-01-13 18:00:00', 'Cello', 400.0),
(1, 3, 'Ensemble', 'Advanced', 'Room J', 'Jazz', '2025-01-14 19:00:00', 'Double Bass', 450.0);

-- Table: booking_request
INSERT INTO booking_request (student_id, schedule_id)
VALUES 
(1, 1),
(2, 2),
(3, 3);

-- Table: enrollment
INSERT INTO enrollment (student_id, booking_request_id, instructor_id)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- Table: instructor_salary
INSERT INTO instructor_salary (instructor_id, enrollment_id, total_income)
VALUES 
(1, 1, 200.0),
(2, 2, 300.0),
(3, 3, 400.0);

-- Table: student_invoice
INSERT INTO student_invoice (enrollment_id, instrument_lease_id, lesson_cost_sum, instrument_rental_cost_sum, total_amount)
VALUES 
(1, NULL, 200.0, 0.0, 200.0),
(2, NULL, 300.0, 0.0, 300.0),
(3, NULL, 400.0, 0.0, 400.0);

-- Table: instrument_lease
INSERT INTO instrument_lease (instrument, starting_date, max_lease_date, student_id, instrument_id)
VALUES 
('Guitar', '2025-01-01', '2025-01-15', 1, 1),
('Violin', '2025-01-05', '2025-01-20', 3, 2);

-- Table: sibling_discount
INSERT INTO sibling_discount (student_id, discount_rate)
VALUES 
(1, 10.0);

-- Table: siblings
INSERT INTO siblings (student_id, sibling)
VALUES 
(1, 'Tom Johnson');

-- Table: email
INSERT INTO email (email)
VALUES 
('alice@example.com'),
('bob@example.com'),
('charlie@example.com');

-- Table: phone
INSERT INTO phone (phone)
VALUES 
('123-456-7890'),
('987-654-3210'),
('555-666-7777');

-- Table: person_email
INSERT INTO person_email (email_id, person_id)
VALUES 
(1, 1),
(2, 2),
(3, 3);

-- Table: person_phone
INSERT INTO person_phone (phone_id, person_id)
VALUES 
(1, 1),
(2, 2),
(3, 3);

-- Table: preference
INSERT INTO preference (person_id, instrument, course_level, course_type)
VALUES 
(1, 'Guitar', 'Beginner', 'Ensemble'),
(2, 'Violin', 'Intermediate', 'Group'),
(3, 'Piano', 'Advanced', 'Ensemble'),
(4, 'Guitar', 'Beginner', 'Individual'),
(4, 'Violin', 'Intermediate', 'Group'),
(5, 'Piano', 'Advanced', 'Ensemble');
(6, 'Guitar', 'Beginner', 'Individual'),
(7, 'Violin', 'Intermediate', 'Group'),
(8, 'Piano', 'Advanced', 'Ensemble');
(9, 'Guitar', 'Beginner', 'Individual'),
(10, 'Violin', 'Intermediate', 'Ensemble');
