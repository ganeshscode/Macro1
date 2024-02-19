USE coffee_store;

SELECT coffee_origin FROM products;

SELECT DISTINCT coffee_origin FROM products;
/* DISTINCT means non duplicate or unique values, so in above case 
it will give distinct or unique coffee_origin only */

SELECT customer_id FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28';

SELECT DISTINCT customer_id FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28';
/* It will return distinct customer_id which ordered between '2017-02-01' AND '2017-02-28' */

SELECT DISTINCT customer_id, product_id FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28';
/* In above case, It will return Distinct Customer_id but product_id will be repeated 
as here only for customer_id we given command to be distinct */

