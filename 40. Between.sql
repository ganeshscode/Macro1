USE coffee_store ;

SELECT*FROM orders;
SELECT*FROM customers;

SELECT	product_id, customer_id, order_time FROM orders
WHERE order_time BETWEEN '2017-01-01' AND '2017-01-07';
/* Here BETWEEN will give values between these two dates (From A to B value) */


SELECT	product_id, customer_id, order_time FROM orders
WHERE customer_id BETWEEN 5 AND 10;
/* Its will give values whose id between 5 and 10 */

SELECT*FROM customers
WHERE last_name BETWEEN 'A' AND 'L';
/* It will return string values from A to L, alphabetically */