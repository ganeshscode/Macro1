USE coffee_store;

SELECT*FROM customers
LIMIT 5;
/* By using limit, it will return only mentioned rows, here is 5 */

SELECT*FROM customers
LIMIT 5 OFFSET 5;
/* Here we are OFFSET that means it will start from offset upto limit  */

SELECT*FROM customers
ORDER BY last_name
LIMIT 10;
/* It will arrange the data in Ascending order as per last_name column */
