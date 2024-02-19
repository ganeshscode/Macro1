USE cinema_booking_system;
SELECT*FROM films;
SELECT MAX(length_min) FROM films;

SELECT MAX(length_min), name FROM films;
SELECT name, MAX(length_min) FROM films;
/* This statement is wrong as it give name of film in first row, its not giving correct one, 
here first row contain film with maximum length, so its returning correct value for this statement only */

SELECT MIN(length_min) FROM films;
SELECT MIN(length_min), name FROM films;
/* Here you can see it returns wrong values */
