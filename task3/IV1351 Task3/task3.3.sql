
CREATE TABLE instructors (
    instructor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);


CREATE TABLE lessons (
    lesson_id SERIAL PRIMARY KEY,
    instructor_id INT NOT NULL REFERENCES instructors(instructor_id),
    date DATE NOT NULL,
    lesson_type VARCHAR(255) NOT NULL
);

INSERT INTO instructors (first_name, last_name) VALUES
('Albus', 'Dumbledore'),
('Pomona', 'Sprout'),
('Gilderoy', 'Lockhart'),
('Minerva', 'McGonagall'),
('Severus', 'Snape'),
('Filius', 'Flitwick'),
('Rubeus', 'Hagrid'),
('Remus', 'Lupin'),
('Sybill', 'Trelawney'),
('Dolores', 'Umbridge');


INSERT INTO instructors (first_name, last_name) VALUES
('Albus', 'Dumbledore'),
('Pomona', 'Sprout'),
('Gilderoy', 'Lockhart'),
('Minerva', 'McGonagall'),
('Severus', 'Snape'),
('Filius', 'Flitwick'),
('Rubeus', 'Hagrid'),
('Remus', 'Lupin'),
('Sybill', 'Trelawney'),
('Dolores', 'Umbridge');


INSERT INTO lessons (instructor_id, date, lesson_type) VALUES
-- Lessons for Albus Dumbledore
(1, '2025-01-02', 'Individual'),
(1, '2025-01-05', 'Group'),
(1, '2025-01-10', 'Ensemble'),
(1, '2025-01-15', 'Group'),
(1, '2025-01-20', 'Individual'),

-- Lessons for Pomona Sprout
(2, '2025-01-03', 'Group'),
(2, '2025-01-06', 'Ensemble'),
(2, '2025-01-10', 'Individual'),
(2, '2025-01-12', 'Group'),
(2, '2025-01-18', 'Group'),
(2, '2025-01-22', 'Ensemble'),

-- Lessons for Gilderoy Lockhart
(3, '2025-01-01', 'Individual'),
(3, '2025-01-04', 'Group'),
(3, '2025-01-08', 'Ensemble'),
(3, '2025-01-11', 'Group'),
(3, '2025-01-13', 'Group'),

-- Lessons for Minerva McGonagall
(4, '2025-01-02', 'Ensemble'),
(4, '2025-01-08', 'Individual'),
(4, '2025-01-12', 'Group'),
(4, '2025-01-15', 'Group'),

-- Lessons for Severus Snape
(5, '2025-01-05', 'Individual'),
(5, '2025-01-07', 'Ensemble'),
(5, '2025-01-13', 'Group'),

-- Lessons for Filius Flitwick
(6, '2025-01-01', 'Group'),
(6, '2025-01-03', 'Individual'),
(6, '2025-01-06', 'Ensemble'),
(6, '2025-01-10', 'Group'),

-- Lessons for Rubeus Hagrid
(7, '2025-01-02', 'Group'),
(7, '2025-01-05', 'Group'),
(7, '2025-01-09', 'Individual'),

-- Lessons for Remus Lupin
(8, '2025-01-03', 'Ensemble'),
(8, '2025-01-07', 'Group'),
(8, '2025-01-10', 'Individual'),

-- Lessons for Sybill Trelawney
(9, '2025-01-04', 'Individual'),
(9, '2025-01-07', 'Group'),
(9, '2025-01-15', 'Ensemble'),

-- Lessons for Dolores Umbridge
(10, '2025-01-02', 'Individual'),
(10, '2025-01-08', 'Group');


----Query
WITH instructor_lessons AS (
    SELECT 
        l.instructor_id,
        COUNT(l.lesson_id) AS no_of_lessons
    FROM 
        lessons l
    WHERE 
        EXTRACT(MONTH FROM l.date) = EXTRACT(MONTH FROM CURRENT_DATE)
        AND EXTRACT(YEAR FROM l.date) = EXTRACT(YEAR FROM CURRENT_DATE)
    GROUP BY 
        l.instructor_id
)
SELECT 
    i.instructor_id,
    i.first_name,
    i.last_name,
    il.no_of_lessons
FROM 
    instructors i
JOIN 
    instructor_lessons il
ON 
    i.instructor_id = il.instructor_id
ORDER BY 
    il.no_of_lessons DESC;
