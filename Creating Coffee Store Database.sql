SHOW databases;
create DATABASE coffee_store;
# it creates database in the name of coffee_store.

Use coffee_store;

CREATE TABLE products (

	id INT AUTO_INCREMENT PRIMARY KEY,
    /* here we want id to be unique and it will automatically increase per row as we used "auto_increment" */
	name VARCHAR(30),
	price DECIMAL(3,2),
    /* Here we using same logic for 1.78 so it will accept values like 9.25 or 15.2 but not like 12.35 or 50.11*/
	coffee_origin VARCHAR(30)
);

CREATE TABLE customers (

	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
    /* here length is upto 30 accepted */
	gender ENUM('M','F'),
    /* here only two values will be male or female */
	phone_number VARCHAR(11)
);

CREATE TABLE orders (

	id INT AUTO_INCREMENT PRIMARY KEY,
    /* here we set id as Primary Key */
	product_id INT,
	customer_id INT,
	order_time DATETIME,
	FOREIGN KEY (product_id) REFERENCES products(id),
	FOREIGN KEY (customer_id) REFERENCES customers(id)
    /* here we setting product_id column as Foreign key and also we need to give reference of primary key */
);
show tables;