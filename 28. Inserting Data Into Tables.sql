use coffee_store;
select*from products;

/* While inserting data into tables make sure that you start from table which do not have any foreign key column,
and insert data in a series depend upon relationship between tables. */
/* If you have too many tables data to insert into single database then dont do it in single tab,
as whenever we use auto increment in first table then when we use auto increment for second table then
it will numbers from last number of first table, (If first table's auto increment column ends at 50,
 then second table's numbering will start from 51)
 Which causes error while we are inserting data from copy paste from instructor, which causes inconsistency with foreign keys refrences.
 */

-- Inserting Data into Tables
/* INSERT INTO <table_name> (<column1>,<column2>,<column3>) 
VALUES 	('value1', 'value2', 'value3');  */

insert into products (name,price,coffee_origin)
values('Expresso', 2.50, 'Brazil');
/* Make sure you must follow series of columns for values */

insert into products (name,price,coffee_origin)
values('Macchiato', 3.00, 'Brazil'), ('Cappuccino', 3.50, 'Costa Rica'),('Latte',3.50,'Indonesia'),('Americano',3.00,'Brazil'),('Flat White',3.50,'Indonesia'),('Filter',3.00,'India');
/* If we run the same code again and again, it will make duplicate entries */