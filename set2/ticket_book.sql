CREATE DATABASE TicketDB;
USE TicketDB;

CREATE TABLE Booking (
    Booking_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Seat_No VARCHAR(10),
    Status VARCHAR(20)
);

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Amount INT,
    Status VARCHAR(20)
);

-- Start Transaction
START TRANSACTION;

INSERT INTO Booking VALUES
(1, 'Amit', 'A10', 'Confirmed');

INSERT INTO Payment VALUES
(101, 500, 'Paid');

-- Save Changes
COMMIT;

-- Display Records
SELECT * FROM Booking;
SELECT * FROM Payment;

START TRANSACTION;

INSERT INTO Booking VALUES
(2, 'Riya', 'A11', 'Pending');

INSERT INTO Payment VALUES
(102, 500, 'Pending');

-- Cancel Transaction
ROLLBACK;

-- Display Records
SELECT * FROM Booking;
SELECT * FROM Payment;