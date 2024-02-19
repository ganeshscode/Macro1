-- CONCAT function

/* The MySQL CONCAT function takes one or more string arguments and concatenates them into a single string. 
The CONCAT function requires a minimum of one parameter otherwise it raises an error. */
/* Syntax : SELECT CONCAT (column1, column2) AS new_column_name FROM table;   */

USE cinema_booking_system;
/* Run code line by line to understand changes */

SELECT CONCAT(first_name,last_name) FROM customers;
/* In this output there is no space, so we can add space by using below syntax. */
SELECT CONCAT(first_name," ", last_name) AS Full_Name FROM customers;

/* We can take number of columns which we requires. */
SELECT CONCAT(first_name," ",last_name, " ", email) AS Full_Name FROM customers;

/* Also we can add suffix and prefix to values by using below syntax. */
SELECT CONCAT("This is ", first_name," ",last_name, " ", "and his mail - ", email) AS Full_Name FROM customers;