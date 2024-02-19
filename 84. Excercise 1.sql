USE cinema_booking_system;

-- 1. How many bookings did customer id 10 make in October 2017.

SELECT COUNT(*) FROM bookings
WHERE customer_id = 10;
/* All data is from October 2017 only so no need to mention where clause for Date, 
so before doing code check values from data. */


-- 2. Count the number of screenings for Blade Runner 2049 in October 2017. 

SELECT COUNT(*) FROM screenings s
JOIN films f ON s.film_id = f.id 
WHERE f.name = 'Blade Runner 2049';

-- My Method
SELECT COUNT(*) FROM screenings
WHERE film_id = 1;
/* Where I used film_id from films table which is mentioned in screenings table so no need to mention JOIN or any relations.  */


-- 3. Count the number of unique customers who made a booking for October 2017.

SELECT COUNT(DISTINCT(customer_id)) FROM bookings;
