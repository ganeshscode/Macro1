
describe addresses;
/* Describe: it gives detailed information about table like what is data type or is it primary or fireign key */
/* Run Describe command once to get idea */

alter table addresses
add  primary key (id);
/* it adds 'id' column as primary key 'addresses' table */

alter table addresses
drop primary key;
/* Drop deletes all primary key from table, no need to mention primary key column name */

describe people;
/* Check table information again after adding or deleting to changes reflected or not */
/* After adding primary key you can check that 'Null" column changed for primary key, which remains same after deleting primary key also */
/* It means that its not going to accept Null values further */

alter table people
add primary key(id);

alter table people
drop primary key;

/* Still any questions..? then you can try to add and delete primary key to understand it */