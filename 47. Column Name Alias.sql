USE coffee_store;
/* To understand run the code, line by line */
SELECT name, price, coffee_origin FROM products;
SELECT*FROM products;
/* By using 'AS' we can change column names in result set only, But column names not going to change permanently */
SELECT name AS coffee, price, coffee_origin AS country FROM products;
SELECT*FROM products;