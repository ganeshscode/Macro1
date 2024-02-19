USE cinema_booking_system;
-- DATE Function
/* It extracts the date from a date data type or a date time data type. */

SELECT DATE('2018-06-05 07:45:32');
/* It extracted only date from date time data type. */

SELECT start_time FROM screenings;
/* Using below syntax we can extract only date from our data which is date time data type. */
SELECT DATE(start_time) FROM screenings;

SELECT*FROM screenings
WHERE start_time = '2017-10-03';
/* It's not working as start_time is DateTime data type and we are entering date type.  */

SELECT*FROM screenings
WHERE DATE(start_time) = '2017-10-03';
/* To get data of any particular date, we can use date function, so it will show all the entries for that date, with whole day (all time).  */


SELECT*FROM screenings
WHERE (start_time) BETWEEN '2017-10-03' AND '2017-10-05';
/* If we are not using DATE function so SQL takes '2017-10-05' as '2017-10-05 00:00:00' that means upto 2017-10-05 midnight 12'O clock,
Which is start of day as per 24Hrs clock, so it takes data only of '2017-10-03' and '2017-10-04' upto '2017-10-05 00:00:00' */

SELECT*FROM screenings
WHERE DATE(start_time) BETWEEN '2017-10-03' AND '2017-10-05';
/* When we use Date Function it takes all the entries for whole day. */
