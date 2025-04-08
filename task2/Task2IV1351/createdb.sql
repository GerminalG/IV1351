
-- CREATE SCRIPT: Soundgood Music School Database

DROP TABLE IF EXISTS instrument_lease, guardian_student, lesson_student, lesson_instructor,
    person_email, person_phone, person, guardian, student, instructor, instrument,
    lesson, lesson_price, email, phone CASCADE;

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(500) NOT NULL,
    last_name VARCHAR(500) NOT NULL,
    person_number VARCHAR(12) UNIQUE NOT NULL,
    street VARCHAR(500),
    zip VARCHAR(500),
    city VARCHAR(500)
);

CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    rental_instrument_1 VARCHAR(500),
    rental_instrument_2 VARCHAR(500),
    person_id INT NOT NULL REFERENCES person(person_id)
);

CREATE TABLE guardian (
    guardian_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL REFERENCES person(person_id)
);

CREATE TABLE guardian_student (
    guardian_id INT NOT NULL REFERENCES guardian(guardian_id),
    student_id INT NOT NULL REFERENCES student(student_id),
    relationship VARCHAR(100) NOT NULL,
    PRIMARY KEY (guardian_id, student_id)
);

CREATE TABLE instructor (
    instructor_id SERIAL PRIMARY KEY,
    instrument VARCHAR(500),
    course_group_id VARCHAR(500),
    genre VARCHAR(500),
    availability TIMESTAMP(10),
    person_id INT NOT NULL REFERENCES person(person_id)
);

CREATE TABLE instrument (
    instrument_id SERIAL PRIMARY KEY,
    instrument VARCHAR(500),
    brand VARCHAR(500),
    amount_in_stock INT,
    total_amount INT,
    price FLOAT(10)
);

CREATE TABLE instrument_lease (
    lease_id SERIAL PRIMARY KEY,
    instrument VARCHAR(500),
    starting_date TIMESTAMP(10) NOT NULL,
    max_lease_date TIMESTAMP(10),
    instrument_id INT REFERENCES instrument(instrument_id),
    student_id INT REFERENCES student(student_id)
);

CREATE TABLE lesson (
    lesson_id SERIAL PRIMARY KEY,
    min_student INT,
    max_student INT,
    lesson_type VARCHAR(500),
    course_level VARCHAR(500),
    room VARCHAR(500),
    genre VARCHAR(500),
    time TIMESTAMP(10),
    instrument VARCHAR(500)
);

CREATE TABLE lesson_price (
    lesson_id INT NOT NULL REFERENCES lesson(lesson_id),
    price INT NOT NULL,
    PRIMARY KEY (lesson_id)
);

CREATE TABLE lesson_student (
    student_id INT NOT NULL REFERENCES student(student_id),
    lesson_id INT NOT NULL REFERENCES lesson(lesson_id),
    PRIMARY KEY (student_id, lesson_id)
);

CREATE TABLE lesson_instructor (
    lesson_id INT NOT NULL REFERENCES lesson(lesson_id),
    instructor_id INT NOT NULL REFERENCES instructor(instructor_id),
    PRIMARY KEY (lesson_id, instructor_id)
);

CREATE TABLE email (
    email_id SERIAL PRIMARY KEY,
    email VARCHAR(500) NOT NULL
);

CREATE TABLE phone (
    phone_id SERIAL PRIMARY KEY,
    phone VARCHAR(500) NOT NULL UNIQUE
);

CREATE TABLE person_email (
    email_id INT NOT NULL REFERENCES email(email_id) ON DELETE CASCADE,
    person_id INT NOT NULL REFERENCES person(person_id),
    PRIMARY KEY (email_id, person_id)
);

CREATE TABLE person_phone (
    phone_id INT NOT NULL REFERENCES phone(phone_id),
    person_id INT NOT NULL REFERENCES person(person_id),
    PRIMARY KEY (phone_id, person_id)
);

CREATE TABLE lesson_type (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);
