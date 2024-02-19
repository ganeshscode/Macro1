USE cofee_store;
/*
% it means any number of characters
_ it means one character
*/
SELECT*FROM customers
WHERE last_name LIKE 'W%';
/* It will return values which starts with 'W' and ends with whatever */

SELECT*FROM customers
WHERE last_name LIKE '%W';
/* It will return values which Ends with 'W' and starts with whatever */

SELECT*FROM customers
WHERE last_name LIKE '%o%';
/* It will return values which consist 'W', no matter whatever at his both sides */

SELECT*FROM customers
WHERE first_name LIKE '_o_';
/* It will return values which has O in middle and only one character at Left and Right */

SELECT*FROM products
WHERE price LIKE '3%';
/* It will return values which starts with 3.00 */