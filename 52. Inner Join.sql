USE coffee_store;
-- INNER JOIN
/* It provides only matching values from two tables. */

SELECT*FROM products;
SELECT*FROM orders;

SELECT products.name, orders.order_time FROM orders
INNER JOIN products ON orders.product_id = products.id;
/* SYNTAX:
SELECT<table_name>.<column_name> FROM <table1>
INNER JOIN / JOIN <table2> ON <table1>.<column> = <table2>.<column>;

SELECT<table_name>.<column_name> FROM <table1>
In above statement we need to mention desired columns we wants to see in result set,
INNER JOIN / JOIN -- Both are same
ON -- it is compulsory
<table1>.<column> = <table2>.<column> It means we need to provide relation between both of them for JOIN
Make sure that they both are equiavalent to each other.
 */

SELECT p.name, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id;
/*  To avoid complexivity of statement we can use short forms for table names 
    But dont forget to mention them after full name
*/

SELECT p.name, p.price, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id
ORDER BY o.order_time;
/* We can also use ORDER BY statement here */

SELECT p.name, p.price, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id
WHERE o.product_id = 5
ORDER BY o.order_time;
/* Here we used WHERE Clause to get data only for 5th product */

/* Practice */
SELECT*FROM orders;
SELECT*FROM customers;

SELECT customers.first_name, orders.product_id FROM customers
JOIN orders ON customers.id = orders.customer_id
WHERE orders.customer_id = 1
ORDER BY orders.product_id;