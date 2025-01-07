CREATE TABLE soundgood_music_school (
    "available_spot" INT NOT NULL,
    "street" VARCHAR(500) NOT NULL,
    "zip" VARCHAR(500) NOT NULL,
    "city" VARCHAR(500) NOT NULL
);

CREATE TABLE instrument (
    "instrument_id" SERIAL PRIMARY KEY,
    "instrument" VARCHAR(500) NOT NULL,
    "brand" VARCHAR(500) NOT NULL,
    "amount_in_stock" INT NOT NULL,
    "total_amount" INT NOT NULL,
    "price" FLOAT(10) NOT NULL
);


CREATE TABLE person (
    "person_id" SERIAL PRIMARY KEY,
    "first_name" VARCHAR(500) NOT NULL,
    "last_name" VARCHAR(500) NOT NULL,
    "person_number" VARCHAR(12) NOT NULL UNIQUE,
    "street" VARCHAR(500) NOT NULL,
    "zip" VARCHAR(500) NOT NULL,
    "city" VARCHAR(500) NOT NULL
);


CREATE TABLE student (
    "student_id" SERIAL PRIMARY KEY,
    "contact_person_name" VARCHAR(500),
    "relationship" VARCHAR(500),
    "rental_instrument_1" VARCHAR(500),
    "rental_instrument_2" VARCHAR(500),
    "person_id" INT NOT NULL REFERENCES "person_id" ON DELETE CASCADE
);


CREATE TABLE instructor (
    "instructor_id" SERIAL PRIMARY KEY,
    "instrument" VARCHAR(500),
    "course_group" VARCHAR(500),
    "genre" VARCHAR(500),
    "availability" TIMESTAMP(10),
    "person_id" INT NOT NULL REFERENCES "person_id" ON DELETE CASCADE
);


CREATE TABLE administrative_staff (
    "staff_id" VARCHAR(500) PRIMARY KEY,
    "person_id" INT NOT NULL REFERENCES "person_id"
);

CREATE TABLE schedule (
    "schedule_id" SERIAL PRIMARY KEY,
    "min_student" INT NOT NULL,
    "max_student" INT NOT NULL,
    "lesson_type" VARCHAR(500) NOT NULL,
    "course_level" VARCHAR(500) NOT NULL,
    "room" VARCHAR(500) NOT NULL,
    "genre" VARCHAR(500),
    "time" TIMESTAMP(10),
    "instrument" VARCHAR(500),
    "price" FLOAT(50) NOT NULL
);

CREATE TABLE booking_request (
    "booking_request_id" SERIAL PRIMARY KEY,
    "student_id" INT NOT NULL REFERENCES "student_id",
    "schedule_id" INT NOT NULL REFERENCES "schedule_id"
);


CREATE TABLE enrollment (
    "id" SERIAL PRIMARY KEY,
    "student_id" INT NOT NULL REFERENCES "student_id",
    "booking_request_id" INT NOT NULL REFERENCES "booking_request_id",
    "instructor_id" INT NOT NULL REFERENCES "instructor_id"
);


CREATE TABLE instructor_salary (
    "instructor_id" INT NOT NULL REFERENCES "instructor_id",
    "enrollment_id" INT NOT NULL REFERENCES "enrollment_id",
    "total_income" FLOAT(500),
    PRIMARY KEY ("instructor_id", "enrollment_id")
);


CREATE TABLE student_invoice (
    "student_invoice_id" SERIAL PRIMARY KEY,
    "enrollment_id" INT NOT NULL REFERENCES "enrollment_id",
    "instrument_lease_id" INT,
    "lesson_cost_sum" FLOAT(50),
    "instrument_rental_cost_sum" FLOAT(50),
    "total_amount" FLOAT(50)
);


CREATE TABLE instrument_lease (
    "instrument_lease_id" SERIAL PRIMARY KEY,
    "instrument" VARCHAR(500),
    "starting_date" TIMESTAMP(10) NOT NULL,
    "max_lease_date" TIMESTAMP(10) NOT NULL,
    "student_id" INT NOT NULL REFERENCES "student_id",
    "instrument_id" INT NOT NULL REFERENCES "instrument_id"
);


CREATE TABLE sibling_discount (
    "student_id" INT NOT NULL REFERENCES "student_id",
    "discount_rate" FLOAT(500),
    PRIMARY KEY ("student_id")
);


CREATE TABLE siblings (
    "student_id" INT NOT NULL REFERENCES "student_id",
    "sibling" VARCHAR(500) NOT NULL
);


CREATE TABLE email (
    "email_id" SERIAL PRIMARY KEY,
    "email" VARCHAR(500) NOT NULL UNIQUE
);


CREATE TABLE phone (
    "phone_id" SERIAL PRIMARY KEY,
    "phone" VARCHAR(500) NOT NULL UNIQUE
);

CREATE TABLE person_email (
    "email_id" INT NOT NULL REFERENCES "email_id",
    "person_id" INT NOT NULL REFERENCES "person_id" ON DELETE CASCADE,
    PRIMARY KEY ("email_id", "person_id")
);


CREATE TABLE person_phone (
    "phone_id" INT NOT NULL REFERENCES "phone_id",
    "person_id" INT NOT NULL REFERENCES "person_id" ON DELETE CASCADE,
    PRIMARY KEY ("phone_id", "person_id")
);


CREATE TABLE preference (
    "person_id" INT NOT NULL REFERENCES "person_id",
    "instrument" VARCHAR(500),
    "course_level" VARCHAR(500),
    "course_type" VARCHAR(500),
    PRIMARY KEY ("person_id")
);

