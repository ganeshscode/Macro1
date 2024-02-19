-- SUBSTRING
/* It is used to derive substring from any given string.
It extracts a string with a specified length, starting from a given location in an input string. 
The purpose of substring is to return a specific portion of the string.*/

/*Syntax :
SUBSTRING(string, start, length)
OR
SUBSTRING(string FROM start FOR length) */

/*
Parameters :
This method accepts three-parameter as mentioned above and described below.
string –
Input String from which to extract.
start –
The starting position. If it is a positive number, this function extracts from the beginning of the string. If it is a negative number, this function extracts from the end of the string.
length –
It is optional. It identifies the number of characters to extract. If it is not given The whole string is returned from the starting position
*/

SELECT SUBSTRING("Example",3) AS sub;
SELECT SUBSTRING("Example",3,3) AS sub;

SELECT name FROM films;

SELECT SUBSTRING(name,1,3) AS short_name FROM films;
SELECT SUBSTRING(name,5,4) AS short_name FROM films;
/* It also counts space. */
SELECT SUBSTRING(name,-2,2) AS short_name FROM films;

/* If we uses negative indexing then -1 means last letter of the string, -2 means second last letter of string and
when we gives length then it strats from last word to the right upto mentioned length,
so If we give start point as -1 and length of 9, it will give only 1 letter,
as after the last letter there will be no any letters by default,
so if we last 3 letters then, its start point will be -3 and length 3. */
SELECT SUBSTRING("Example",1,3) AS sub;

SELECT SUBSTRING("Example",-2,3);
/* Its not working properly as after -2 there will be only 2 letters as length so 3 will be wrong here. */

SELECT SUBSTRING("Example", LENGTH("Example") - 5, 5) AS sub;
/* As we started from -5 so it will have 5 left as length so its working. */


