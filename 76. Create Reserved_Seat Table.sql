USE cinema_booking_system;

CREATE TABLE reserved_seats(
id INT PRIMARY KEY AUTO_INCREMENT,
booking_id INT NOT NULL,
seat_id INT NOT NULL,
FOREIGN KEY (booking_id) REFERENCES bookings (id),
FOREIGN KEY (seat_id) REFERENCES seats(id)
);

SHOW TABLES;
SELECT*FROM reserved_seats;
DESCRIBE reserved_seats;