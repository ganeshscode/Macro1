-- UPPER Function
/*
This function in SQL Server helps to convert all the letters of the given string to Uppercase. If the given string contains special characters or numeric values, then they will remain unchanged by this function.

Syntax :

UPPER( str )
Parameters :

str – The string which will be converted to uppercase
*/

USE cinema_booking_system;
SELECT name FROM rooms;

SELECT UPPER(name) AS name FROM rooms;


-- LOWER
/*
This function in SQL Server helps to convert all the letters of the given string to lowercase. 
If the given string contains characters other than alphabets, then they will remain unchanged by this function. 

Syntax : 
LOWER( str )

Parameters : 
str – The string which will be converted to lowercase

Result : 
This function returns the lowercase string. 
*/
SELECT name FROM rooms;
SELECT LOWER(name) AS name FROM rooms;