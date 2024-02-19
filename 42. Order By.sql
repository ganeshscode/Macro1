USE coffee_store;

SELECT*FROM products
ORDER BY price ASC;
/* It will order data into Ascending Order as per price column */

SELECT*FROM products
ORDER BY price DESC;
/* It will order data into Descending order as per price column */

SELECT*FROM customers
ORDER BY last_name ASC;
/* It will arrange last_name column in alphabetically ascending order */

SELECT*FROM customers
ORDER BY last_name DESC;


SELECT*FROM orders
WHERE customer_id =1
ORDER BY order_time ASC;
/* It will give data for customer with id 1, when he visited store */

SELECT*FROM orders
WHERE customer_id =1
ORDER BY order_time DESC;