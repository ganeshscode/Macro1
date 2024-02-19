use test;
-- How to change a Columns Data Type
/* alter table <tablename> modify <columnname> <data type>; */
/* To change column data type, at last you need to enter desired data type */

describe addresses;
alter table addresses modify city varchar (30);
alter table addresses modify city int;