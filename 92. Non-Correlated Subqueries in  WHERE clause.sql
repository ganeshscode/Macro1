 USE cinema_booking_system;
 
 SELECT id, start_time FROM screenings
 WHERE film_id IN 
   (SELECT id FROM films
   WHERE length_min > 120);
   /* Here we used Subquery to define relation between two tables or link them. */
   
   SELECT id FROM films
   WHERE length_min > 120;
   /* Here we can see that inner query works independently of outer query. */
   
   SELECT*FROM customers;
   
   SELECT first_name, last_name, email FROM customers
   WHERE id IN 
   (SELECT customer_id FROM bookings
   WHERE screening_id = 1);
   
   SELECT customer_id FROM bookings
   WHERE screening_id = 1;
   