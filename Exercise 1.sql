use test;
show tables;
select*from pets;

/* Task 1 : Adding Primary Key */
alter table pets
add primary key (id);


describe pets;

select*from people;
describe people;

/* Task 2 : Adding Foreign Key */
alter table pets
add constraint GG_ganesh
foreign key (owner_id) references people (id);

/*  Task 3 : Adding new column */
alter table people
add column email_id varchar(30);
/* Changing column name */
alter table people change `email_id` `email` varchar(30);

/* Task 4 : Adding unique constraint */
alter table people
add constraint GK unique (email);

/* Task 5 : Changing column name */
alter table pets change `name` `first_name` varchar(30);

/* Task 6 : Changing data type of column */
alter table addresses modify postcode char(7);
describe addresses;