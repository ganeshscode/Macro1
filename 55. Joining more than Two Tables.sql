USE coffee_store;

/* We can join more than two tables (upto N number of tables) using JOIN statement,
But we cant join those which has no relations with each other, they must have PRIMARY Key and Foreign key in common,
so for those tables who dont have any relation directly with each other, for them we need to define their relation
with the help of third table, see below example to get better understanding
*/

SELECT*FROM products;
SELECT*FROM customers;
SELECT*FROM orders;

SELECT p.name, p.price, c.first_name, c.last_name, o.order_time FROM products p
JOIN orders o ON p.id=o.product_id
JOIN customers c ON c.id = o.customer_id;

/* We can see that customers table and product table dont have any direct relation with each other,
so we need help of orders table to join customers and product table.
*/

/* We can join more tables with this statement just using same syntax: JOIN and table name and relation */

SELECT p.name, p.price, c.first_name, c.last_name, o.order_time FROM products p
JOIN orders o ON p.id=o.product_id
JOIN customers c ON c.id = o.customer_id
WHERE c.last_name = 'Martin'
ORDER BY o.order_time;
/* Here we used WHERE clause to get data for specific customer only, also we can get data for specific product, time or gender also. */