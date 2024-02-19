 USE cinema_booking_system;
 
 -- Subqueries
 /* Subqueries are quries nested within other queries.
 Can be used in a SELECT, INSERT, UPDATE or DELETE query. 
 The nested query can be in the WHERE clause or the FROM. 
 
 Two types of subquery :
 1. Non-Correlated
 2. Correlated
 */
 
 -- NON-CORRELATED SUBQUERY
 /* The inner query can run independently of the outer query. */
 SELECT id, start_time FROM screenings
 WHERE film_id IN 
   (SELECT id FROM films
   WHERE length_min > 120);
   /* Inner query runs first and produces a result set, which is then used by the outer query. */
   
   -- CORRELATED SUBQUERY
   /* The ineer query can't run independently of the outer query. */
   SELECT screening_id, customer_id,
   (SELECT COUNT(seat_id)
   FROM reserved_seats WHERE booking_id = b.id)
   FROM bookings b;
   /* The inner query runs for every row in the outer query. */