USE coffee_store;

SELECT*FROM customers
WHERE last_name IN ('Taylor','Bluth','Armstrong');
/* We can give mulitple values IN clause, if these values present in respective column it will return these values */

SELECT*FROM customers
WHERE first_name NOT IN ('Katie','John','George');
/* NOT IN means it will give values except mentioned values */