USE cinema_booking_system;

/* While inserting data into tables make sure that you start from table which do not have any foreign key column,
and insert data in a series depend upon relationship between tables. */
/* If you have too many tables data to insert into single database then dont do it in single tab,
as whenever we use auto increment in first table then when we use auto increment for second table then
it will numbers from last number of first table, (If first table's auto increment column ends at 50,
 then second table's numbering will start from 51)
 Which causes error while we are inserting data from copy paste from instructor, which causes inconsistency with foreign keys refrences.
 */

SELECT*FROM films;

INSERT INTO films (name, length_min)
VALUES ('Blade Runner 2049',153),
('Dunkirk',106),
('Geostorm',121),
('Thor: Ragnarok',107),
('Jigsaw',116),
('The Death of Stalin',98),
('The Lego Ninjago Movie',101),
('Murder on the Orient Express',135),
('Paddington 2',88),
('Breathe',117),
('Blade Runner',127),
('Victoria and Abdul',112);