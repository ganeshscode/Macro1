USE cinema_booking_system;

SELECT*FROM rooms;

SELECT SUM(no_seats) FROM rooms;
/* We cannot do SUM on Text values so we cant perform on '*'     */

SELECT SUM(no_seats) FROM rooms
WHERE id>1;
