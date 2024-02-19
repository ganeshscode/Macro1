USE cinema_booking_system;

-- YEAR function :
/* 
This function in SQL Server is used to return the year for a date stated.

Features :
This function is used to find the year for a date specified.
This function comes under Date Functions.
This function accepts only one parameter i.e, date.
This function can also include time with the stated date.

Syntax :
YEAR(date)

Parameter :
This method accepts only one parameter as given below :
date : Specified date from which the year is to be returned.

Returns :
It returns the year for a date specified.
*/

SELECT YEAR ('2018-06-05 07:45:32');

SELECT start_time FROM screenings;
SELECT YEAR(start_time) FROM screenings;
/* It returns only Year from date. */

SELECT*FROM screenings
WHERE YEAR(start_time) = '2017';
/* This is useful when there is data of 5 or 10 years, so we can extract data of particular year.
2017 means 1st JAN to 31st DEC
 */
