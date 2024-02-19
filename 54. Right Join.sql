USE coffee_store;
/* Right JOIN is same as Left Join (But works oppositely), the difference is it takes all the values from Table2*/

SELECT*FROM customers;
SELECT*FROM orders;


SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time
LIMIT 10; 

SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
RIGHT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time
LIMIT 10; 

UPDATE orders
SET customer_id = 1
WHERE id =205;