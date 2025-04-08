
-- UPDATED TASK 3 SQL
-- Soundgood Music School | OLAP Queries for Business Analysis
-- ------------------------------------------------------------

-- IMPORTANT: This script assumes that the schema from create_soundgood_db.sql has been executed,
-- and that data from insert_soundgood_data_50.sql has been inserted.

-- ===========================================================
-- QUERY 3.1: Number of lessons per month during a specified year
-- ===========================================================
-- This query shows the number of lessons (total, and per type) given each month in a year.

EXPLAIN ANALYZE
SELECT
    TO_CHAR(l.date, 'Mon') AS month,
    COUNT(*) AS total_lessons,
    COUNT(CASE WHEN lt.name = 'individual' THEN 1 END) AS individual_lessons,
    COUNT(CASE WHEN lt.name = 'group' THEN 1 END) AS group_lessons,
    COUNT(CASE WHEN lt.name = 'ensemble' THEN 1 END) AS ensemble_lessons
FROM lesson l
JOIN lesson_type lt ON l.lesson_type_id = lt.id
WHERE EXTRACT(YEAR FROM l.date) = 2025
GROUP BY TO_CHAR(l.date, 'Mon'), EXTRACT(MONTH FROM l.date)
ORDER BY EXTRACT(MONTH FROM l.date);

-- ===========================================================
-- QUERY 3.2: Students with 0, 1, or 2 siblings
-- ===========================================================
-- Assumes that students with the same contact_person_id are siblings.

WITH sibling_count AS (
    SELECT contact_person_id, COUNT(id) AS sibling_total
    FROM student
    GROUP BY contact_person_id
),
normalized AS (
    SELECT
        CASE
            WHEN sibling_total - 1 = 0 THEN 0
            WHEN sibling_total - 1 = 1 THEN 1
            ELSE 2
        END AS no_of_siblings
    FROM sibling_count
),
distribution AS (
    SELECT no_of_siblings, COUNT(*) AS no_of_students
    FROM normalized
    GROUP BY no_of_siblings
)
SELECT * FROM distribution ORDER BY no_of_siblings;

-- ===========================================================
-- QUERY 3.3: Instructors with more than N lessons this month
-- ===========================================================
-- Replace :N with a threshold number like 5 to filter instructors.

SELECT
    i.id AS instructor_id,
    i.first_name,
    i.last_name,
    COUNT(l.id) AS no_of_lessons
FROM instructor i
JOIN lesson l ON l.instructor_id = i.id
WHERE EXTRACT(YEAR FROM l.date) = EXTRACT(YEAR FROM CURRENT_DATE)
  AND EXTRACT(MONTH FROM l.date) = EXTRACT(MONTH FROM CURRENT_DATE)
GROUP BY i.id
HAVING COUNT(l.id) > 5
ORDER BY no_of_lessons DESC;

-- ===========================================================
-- QUERY 3.4: Upcoming ensembles in next week with seat status
-- ===========================================================
-- Check which ensembles are held next week and how full they are.

SELECT
    TO_CHAR(s.start_time, 'Dy') AS day,
    g.name AS genre,
    CASE
        WHEN (s.max_participants - COUNT(b.id)) = 0 THEN 'No Seats'
        WHEN (s.max_participants - COUNT(b.id)) BETWEEN 1 AND 2 THEN '1 or 2 Seats'
        ELSE 'Many Seats'
    END AS "No of Free Seats"
FROM schedule s
JOIN lesson l ON s.lesson_id = l.id
JOIN genre g ON l.genre_id = g.id
LEFT JOIN booking b ON s.id = b.schedule_id
JOIN lesson_type lt ON l.lesson_type_id = lt.id
WHERE s.start_time >= CURRENT_DATE
  AND s.start_time < CURRENT_DATE + INTERVAL '7 days'
  AND lt.name = 'ensemble'
GROUP BY s.start_time, g.name, s.max_participants
ORDER BY day, g.name;

-- END OF TASK 3 SQL
