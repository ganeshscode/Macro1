use coffee_store;
select*from products;

-- How to update data
/* UPDATE <table_name>
   SET <column_name> = 'Value'
   WHERE id = 7;   */
   
   update products
   set coffee_origin = 'India'
   where id=6;
   
   /* How it works ?
   Firstly we need to use/make table ready for accepting changes by using "Update"
   then provide new value and in which column, SET <column_name> = 'Value'
   at last we need to mention which row's value we want to update, 
   where id=6 it means where 'id' column value is 6, thats row's 'Coffee_origin' value going to change.  */
   
   /* IMPORTANT : In "WHERE" statement you are only allowed to use the primary key column
      and that's because automatically it sets safe updates.
      so to change that, we can "SET SQL_SAFE_UPDATES = 0;" (0 Means Off and 1 means On)
      now we won't have to use primary key column, when we're using the "WHERE" Clause.
   */
   
   set sql_safe_updates=0;
   
   -- How to update more than one column at a time
   update products
   set price = 3.25, coffee_origin = 'Ethiopia'
   where name= 'macchiato';
   /* As we deactivated safe updates, we used non "Primary Key" in "Where Clause"  */
   
   update products
   set coffee_origin = 'Colombia'
   where coffee_origin ='Brazil';
   /* It updates more than one rows as we mentioning coffee_origin itself so wherever same value occurs it will update value */