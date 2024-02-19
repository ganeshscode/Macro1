USE cinema_booking_system;

SELECT*FROM reserved_seats;

SELECT booking_id, COUNT(seat_id) FROM reserved_seats
GROUP BY booking_id;

SELECT MAX(no_seats) FROM 
(SELECT booking_id, COUNT(seat_id) AS no_seats FROM reserved_seats
GROUP BY booking_id) b;
/* Whenever you're creating a derived table in a subquery, you have to refer that table with a name.
that's why we used 'b' after 'booking_id' */

SELECT AVG(no_seats), MAX(no_seats) FROM 
(SELECT booking_id, COUNT(seat_id) AS no_seats FROM reserved_seats
GROUP BY booking_id) b;
