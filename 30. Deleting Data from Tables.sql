use example;
-- creating test data
Create table people(
id int auto_increment primary key,
name varchar(30),
age int,
gender Enum('M','F')
);

select*from people;
/* Inserting data */
insert into people (name, age, gender)
values('Emma',21,'F'), ('John',30,'M'), ('Thomas',27, 'M'), ('Chris', 44, 'M'), ('Sally', 23, 'F'), ('Frank',55, 'M');

/* Deleting Data */
delete from people
where name = 'John';
/* In above syntax, From 'People' table wherever in 'name' column "John" present that row will be deleted */

/* Deleting Multiple Data */
delete from people
where gender = 'F';

/* Deleting all data from table */
delete from people;