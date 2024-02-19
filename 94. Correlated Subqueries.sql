USE cinema_bboking_system;

 -- CORRELATED SUBQUERY
   /* The ineer query can't run independently of the outer query. */
   /* The inner query runs for every row in the outer query. */
   
SELECT screening_id, customer_id
FROM bookings
ORDER BY screening_id;

SELECT screening_id, customer_id,
(SELECT COUNT(seat_id)
FROM reserved_seats WHERE booking_id=b.id)
FROM bookings b 
ORDER BY screening_id;

/* The ineer query can't run independently of the outer query. */
SELECT COUNT(seat_id)
FROM reserved_seats WHERE booking_id=b.id

