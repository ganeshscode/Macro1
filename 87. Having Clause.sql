USE cinema_booking_system;
SELECT*FROM bookings;

SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id
WHERE customer_id = 10;
/* We cant use WHERE in GROUP BY. */

SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id
HAVING customer_id = 10;
/* Wherever GROUP BY present, we need to use HAVING to get exact values. */