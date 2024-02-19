USE cinema_booking_system;
SELECT*FROM bookings;

SELECT customer_id, COUNT(id) FROM bookings;
/* As we know we dont get exact data with this statement so we need to use GROUP BY to get count of each customer's bookings he made */

SELECT customer_id, COUNT(id) FROM bookings
GROUP BY customer_id;
/* Now we can see we are getting exact data for each customer. */

SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id
ORDER BY customer_id;
/* We can select multiple columns by mentioning in GROUP BY */


SELECT f.name, s.start_time, c.first_name, c.last_name, COUNT(b.id) FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN bookings b ON s.id = b.screening_id
JOIN customers c ON b.customer_id = c.id
GROUP BY f.name, c.last_name, c.first_name, s.start_time
ORDER BY s.start_time;
/* In above code we are selecting data from multiple tables so we need to use JOIN (To join them and define relationship between them)
then we can GROUP all data to desired values. */
