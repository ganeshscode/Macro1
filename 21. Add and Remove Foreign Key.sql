use test;
describe people;

alter table addresses
add primary key (id);
-- Adding Foreign Key
alter table people
add constraint FK_PeopleAddress
foreign key (address_id) references addresses(id);

/* For adding foreign key make sure you add constraint, as it makes calling it simple */
/* Make sure whatever reference column you are mentioning it has to be Primary Key itself */

describe addresses;

alter table people
drop foreign key FK_PeopleAddress;
/* While deleting Foreign key we need to mention same constraint name instead of column name */