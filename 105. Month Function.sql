USE cinema_booking_system;

-- MONTH function :
/*
This function in SQL Server is used to return the month of the year i.e, from 1 to 12 for a date stated.

Features :

This function is used to find the month of the year for a date specified.
This function comes under Date Functions.
This function accepts only one parameter i.e, date.
This function can also include time with the stated date.

Syntax :
MONTH(date)

Parameter :
This method accepts only one parameter as given below :
date : Specified date from which the month of the year is to be returned.

Returns :
It returns the month of the year i.e, from 1 to 12 for a date specified.

Note :
This function is not useful when data is of 5 or 10 years as it will give data of that month from all the years.
*/

SELECT MONTH('2018-06-05 07:45:32');
/* This function can also include time with the stated date. */

SELECT start_time FROM screenings;

SELECT MONTH(start_time) FROM screenings;
/* It returns only month number from the data. */

SELECT*FROM screenings
WHERE MONTH (start_time)='10';
/* It gives data of 10th (October) Month only. */



