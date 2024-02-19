USE coffee_store;

SELECT*FROM products
WHERE coffee_origin = 'Brazil';
/* It will return all the values who has coffee_origin as 'Brazil' */

SELECT*FROM products
WHERE price = 3.00;
/* It will return all the values who has price as 3.00 */

SELECT*FROM products
WHERE price = 3.00
AND coffee_origin = 'Brazil';
/* We can use AND here, it will return values which has price = 3.00 and coffee_origin = 'Brazil'  */


SELECT*FROM products
WHERE price = 3.00
AND coffee_origin = 'Brazil'
AND name = 'Macchiato';
/* We can add AND Clause as many as we want. */

SELECT*FROM products
WHERE price = 3.00
OR coffee_origin = 'Brazil';
/* We can also use OR here so it give values which has either price = 3.00 or coffee_origin = 'Brazil' */

