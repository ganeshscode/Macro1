USE coffee_store;

-- 1. From the products table, select the name and price of all products with a coffee origin
-- equal to Colombia or Indonesia. Ordered by name from A-Z.

SELECT name, price FROM products
WHERE coffee_origin IN ('Brazil','Indonesia')
ORDER BY name;

SELECT*FROM products;

-- 2. From the orders table, select all the orders from February 2017 for customers with 
-- id’s of 2, 4, 6 or 8. 

SELECT*FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28'
AND customer_id IN (2,4,6,8);


-- 3. From the customers table, select the first name and phone number of all customers 
-- who’s last name contains the pattern ‘ar’.

SELECT first_name, phone_number FROM customers
WHERE last_name LIKE '%ar%';


