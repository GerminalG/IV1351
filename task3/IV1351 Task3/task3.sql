DROP TABLE IF EXISTS schedule CASCADE;

CREATE TABLE schedule (
    id SERIAL PRIMARY KEY,              
    min_student INT NOT NULL,           
    max_student INT NOT NULL,           
    lesson_type VARCHAR(500) NOT NULL,  
    course_level VARCHAR(500) NOT NULL, 
    room VARCHAR(500) NOT NULL,         
    genre VARCHAR(500),                
    month INT NOT NULL,                 
    year INT NOT NULL,                  
    instrument VARCHAR(500),            
    price NUMERIC(10, 2) NOT NULL      
);

INSERT INTO schedule (min_student, max_student, lesson_type, course_level, room, genre, month, year, instrument, price)
VALUES

(1, 5, 'Individual', 'Beginner', 'Room A', 'Classical', 1, 2025, 'Guitar', 200.00),
(3, 10, 'Group', 'Intermediate', 'Room B', 'Jazz', 2, 2025, 'Piano', 300.00),
(1, 3, 'Ensemble', 'Advanced', 'Room C', 'Pop', 3, 2025, 'Violin', 400.00),
(2, 8, 'Group', 'Intermediate', 'Room D', 'Rock', 4, 2025, 'Drum', 250.00),
(1, 4, 'Individual', 'Beginner', 'Room E', 'Classical', 5, 2025, 'Flute', 220.00),
(3, 12, 'Group', 'Advanced', 'Room F', 'Blues', 6, 2025, 'Saxophone', 300.00),
(2, 6, 'Individual', 'Beginner', 'Room G', 'Classical', 7, 2025, 'Clarinet', 240.00),
(3, 8, 'Group', 'Intermediate', 'Room H', 'Jazz', 8, 2025, 'Trumpet', 280.00),
(1, 5, 'Individual', 'Advanced', 'Room I', 'Classical', 9, 2025, 'Cello', 400.00),
(1, 3, 'Ensemble', 'Advanced', 'Room J', 'Jazz', 10, 2025, 'Double Bass', 450.00),
(1, 5, 'Individual', 'Beginner', 'Room K', 'Classical', 11, 2025, 'Guitar', 210.00),
(3, 10, 'Group', 'Intermediate', 'Room L', 'Jazz', 12, 2025, 'Piano', 310.00),
(1, 3, 'Ensemble', 'Advanced', 'Room M', 'Pop', 1, 2025, 'Violin', 410.00),
(2, 8, 'Group', 'Intermediate', 'Room N', 'Rock', 2, 2025, 'Drum', 260.00),
(1, 4, 'Individual', 'Beginner', 'Room O', 'Classical', 3, 2025, 'Flute', 230.00),
(3, 12, 'Group', 'Advanced', 'Room P', 'Blues', 4, 2025, 'Saxophone', 320.00),
(2, 6, 'Individual', 'Beginner', 'Room Q', 'Classical', 5, 2025, 'Clarinet', 250.00),
(3, 8, 'Group', 'Intermediate', 'Room R', 'Jazz', 6, 2025, 'Trumpet', 290.00),
(1, 5, 'Individual', 'Advanced', 'Room S', 'Classical', 7, 2025, 'Cello', 420.00),
(1, 3, 'Ensemble', 'Advanced', 'Room T', 'Jazz', 8, 2025, 'Double Bass', 460.00);

----test
SELECT 
    TO_CHAR(TO_DATE(month::TEXT, 'MM'), 'Mon') AS month, 
    COUNT(*) AS total,                                   
    SUM(CASE WHEN lesson_type = 'Individual' THEN 1 ELSE 0 END) AS individual, 
    SUM(CASE WHEN lesson_type = 'Group' THEN 1 ELSE 0 END) AS group_lessons,   
    SUM(CASE WHEN lesson_type = 'Ensemble' THEN 1 ELSE 0 END) AS ensemble      
FROM schedule
WHERE year = 2025                                        
GROUP BY month                                            
ORDER BY month;                                           
