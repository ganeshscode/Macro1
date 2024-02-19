-- Renaming Column


use test;

select*from pets;

alter table pets change `animal_stype` `animal_type` varchar(20);
/* alter table <tablename> change `old_column_name` `new_column_name` <data_type>;  */
/* Here "`" its not a single qote its sign located below the "Esc" button, i.e. Back Tick */
