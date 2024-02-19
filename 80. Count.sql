-- WHAT ARE AGGREGATE FUNCTIONS

/* Perofrm a calculations on data within a column and returns one result row.
can use GROUP BY clauses to group the results by one(or more) columns.
can use a HAVING clause in a similar way to a WHERE clause in a SELECT statement to filter the result set. */

USE cinema_booking_system;
SELECT*FROM customers;
SELECT COUNT(*) FROM customers;
SELECT COUNT(last_name) FROM customers;
SELECT COUNT(first_name) FROM customers;
/* As first_name column contains NULL values and COUNT function dont counts null values, so it returns only NOT NULL values. */

SELECT COUNT(*) FROM customers
WHERE last_name = 'smith';
/* We can use WHERE clause here so it can give count of specific values. */

SELECT COUNT(*) FROM customers
WHERE first_name IS NULL;

