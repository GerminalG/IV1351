CREATE TABLE studentsibling (
    student_id SERIAL PRIMARY KEY,       
    contact_person_name VARCHAR(255) NOT NULL
);



INSERT INTO studentsibling (contact_person_name)
VALUES

('Anna Smith'),   -- student_id = 1
('Anna Smith'),   -- student_id = 2
('Anna Smith'),   -- student_id = 3

('Robert Johnson'), -- student_id = 4
('Robert Johnson'), -- student_id = 5
('Robert Johnson'), -- student_id = 6
('Robert Johnson'), -- student_id = 7

('Nancy Williams'), -- student_id = 8
('Nancy Williams'), -- student_id = 9

('Emily Brown'),    -- student_id = 10

('Sophia Taylor'),  -- student_id = 11
('Sophia Taylor'),  -- student_id = 12

('David Miller'),   -- student_id = 13
('David Miller'),   -- student_id = 14
('David Miller'),   -- student_id = 15

('Laura Wilson'),   -- student_id = 16

('James Harris'),   -- student_id = 17
('James Harris'),   -- student_id = 18
('James Harris'),   -- student_id = 19

('Sarah Lee'),      -- student_id = 20

('Michael Clark'),  -- student_id = 21
('Michael Clark'),  -- student_id = 22
('Michael Clark'),  -- student_id = 23
('Michael Clark'),  -- student_id = 24

('Olivia Adams'),   -- student_id = 25
('Olivia Adams'),   -- student_id = 26

('Ethan Scott'),    -- student_id = 27

('Ava Parker'),     -- student_id = 28
('Ava Parker'),     -- student_id = 29
('Ava Parker');     -- student_id = 30
----test

WITH sibling_counts AS (
    SELECT 
        contact_person_name,
        COUNT(student_id) - 1 AS no_of_siblings 
        studentsibling
    GROUP BY 
        contact_person_name
),


sibling_distribution AS (
    SELECT 
        CASE 
            WHEN no_of_siblings = 0 THEN 0
            WHEN no_of_siblings = 1 THEN 1
            WHEN no_of_siblings >= 2 THEN 2
        END AS no_of_siblings,
        COUNT(*) AS no_of_students
    FROM 
        sibling_counts
    GROUP BY 
        CASE 
            WHEN no_of_siblings = 0 THEN 0
            WHEN no_of_siblings = 1 THEN 1
            WHEN no_of_siblings >= 2 THEN 2
        END
)


SELECT 
    no_of_siblings, 
    no_of_students
FROM 
    sibling_distribution
ORDER BY 
    no_of_siblings;

