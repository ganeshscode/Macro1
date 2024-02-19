USE coffee_store;

SELECT*FROM customers
WHERE phone_number IS NULL;
/* Instead of '=' we use 'IS' here */

SELECT*FROM customers
WHERE phone_number IS NOT NULL;
/* Instead of '/=' we use 'IS NOT NULL' here */
