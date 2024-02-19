USE coffee_store;

/*
> it means greater than
>= it means greater than or equal to
< it means less than
<= less than or equal to
*/

/* Its useful when data is numeric, not helful for strings. */

SELECT*FROM products;

SELECT*FROM products
WHERE price>=3.00;

SELECT*FROM products
WHERE price>3.00;

SELECT*FROM products
WHERE price<3.00;

SELECT*FROM products
WHERE price<=3.00;
