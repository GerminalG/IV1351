
CREATE TABLE schedule (
    schedule_id SERIAL PRIMARY KEY,      
    day DATE NOT NULL,                    
    genre VARCHAR(255) NOT NULL,         
    max_seats INT NOT NULL,               
    booked_seats INT NOT NULL             
);

INSERT INTO schedule (day, genre, max_seats, booked_seats) VALUES

('2025-01-09', 'Gospel', 50, 50),        
('2025-01-10', 'Punk', 30, 28),         
('2025-01-10', 'Rock', 25, 25),          
('2025-01-12', 'Rock', 40, 20),          


('2025-01-15', 'Jazz', 20, 10);         
--- query

WITH upcoming_ensembles AS (
    SELECT 
        schedule_id,
        TO_CHAR(day, 'Dy') AS day_name,  
        genre,
        max_seats,
        booked_seats,
        max_seats - booked_seats AS free_seats 
    FROM 
        schedule
    WHERE 
        day >= CURRENT_DATE AND day < CURRENT_DATE + INTERVAL '7 days' 
),


categorized_ensembles AS (
    SELECT 
        schedule_id,
        day_name,
        genre,
        CASE 
            WHEN free_seats = 0 THEN 'No Seats'
            WHEN free_seats BETWEEN 1 AND 2 THEN '1 or 2 Seats'
            ELSE 'Many Seats'
        END AS no_of_free_seats
    FROM 
        upcoming_ensembles
)


SELECT 
    day_name AS "Day",
    genre AS "Genre",
    no_of_free_seats AS "No of Free Seats"
FROM 
    categorized_ensembles
ORDER BY 
    day_name, genre;
