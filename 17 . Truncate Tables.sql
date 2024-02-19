-- How to delete all data from tables 
-- For that we use "TRUNCATE TABLE" followed by table name 
/* Check bottom of code to understand, here instructor already inserted data so here just writting code */

Create Database example;
/* Created database in the name of example */

use example;
/* as we are going to make changes, we firstly need to activate database using 'Use' command */


create table test (
id int auto_increment primary key,
name varchar (30),
age int 
);

/* whenever we are going create table then mention desired columns name along with data type within (); and at last semicolon ';' is must */

select*from test;
/* Here '*' selects all from Test table */
show tables;
/* Show tables : will show the tables available in respective database */

drop table test;
/* DROP is used to delete things like table, column or database also */

truncate table test;
