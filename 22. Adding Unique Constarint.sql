-- How to Add Unique Constraint to column
/* Unique constraint means that column will accept only unique values, you cant put same value twice in that column */
use test;
/* Call 'Test' database */

select*from pets;
/* selecting all values from pets table from test database */

alter table pets
add constraint u_species unique (species);
/* To add unique constraint also we need constraint and define it by name */
/* After unique you need to enter column name that you wants to make unique */

alter table pets
drop index u_species
/* While dropping an unique you need to use "INDEX" followed by constraint name, instead of "CONSTARINT" */
 
