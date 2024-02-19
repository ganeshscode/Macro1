-- HOW TO ADD AND REMOVE COLUMNS FROM A TABLE 
/* Run code line by line otherwise it will show column already exist or column not exist */
SELECT*FROM products;
/* we selected Products table from coffee_store database */
/* Star (*) in Select and From, it means select all from products table */

/* to modify table first we need to run below code */
ALTER TABLE products
/* To add columns use below syntax i.e. ADD COLUMN column name & data type */
ADD COLUMN coffee_origin VARCHAR(30);
ALTER TABLE products 
/* here we again used Alter as we are going to modify table */
drop column coffee_origin;
/* Drop is command to delete entire column/ table */