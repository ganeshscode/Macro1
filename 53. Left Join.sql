USE coffee_store;
/* Left Join will compare data, like whatever mention to 'A column from Left Table= A from Right Table', 
From left table(A column) it will look for same values in A column of Right Table, If not present then it will give NULL as values,
For any value which is present in Right table but not in Left table, as LEFT JOIN logic it will drop that row in result set,
as there no value present in Left table.(Actually we are providing values to look in Right table but anything not provided (or which is NULL)
then how system can look for anything which is not provided, so it will just give records where values matches from Left Table.)
*/
/*
UPDATE orders
SET customer_id = 1
WHERE id =205;
*/

SELECT*FROM customers;
SELECT*FROM orders;

UPDATE orders
SET customer_id = NULL
WHERE id =205;

SELECT*FROM customers;
SELECT*FROM orders;

SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o
LEFT JOIN customers c ON o.customer_id=c.id
ORDER BY o.order_time
LIMIT 10; 
 
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time
LIMIT 10; 

SELECT*FROM customers;
SELECT*FROM orders;

SELECT*FROM orders o
LEFT JOIN customers c ON o.customer_id=c.id
ORDER BY o.order_time
LIMIT 10; 

SELECT*FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time
LIMIT 10; 
