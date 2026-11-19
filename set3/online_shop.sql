CREATE DATABASE ShoppingDB;
USE ShoppingDB;

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Product_Name VARCHAR(50),
    Amount INT
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY,
    Order_ID INT,
    Amount INT,
    Status VARCHAR(20)
);

CREATE TABLE Inventory (
    Product_Name VARCHAR(50) PRIMARY KEY,
    Stock INT
);

INSERT INTO Inventory VALUES ('Laptop', 10);

 -- Successful transaction using COMMIT
START TRANSACTION;

INSERT INTO Orders
VALUES (1, 'Rahul', 'Laptop', 50000);

INSERT INTO Payments
VALUES (101, 1, 50000, 'Successful');

UPDATE Inventory
SET Stock = Stock - 1
WHERE Product_Name = 'Laptop';

COMMIT;

SELECT * FROM Orders;
SELECT * FROM Payments;
SELECT * FROM Inventory;

 -- Failed transaction using ROLLBACK
START TRANSACTION;

INSERT INTO Orders
VALUES (2, 'Amit', 'Laptop', 50000);

INSERT INTO Payments
VALUES (102, 2, 50000, 'Failed');

UPDATE Inventory
SET Stock = Stock - 1
WHERE Product_Name = 'Laptop';

ROLLBACK;

SELECT * FROM Orders;
SELECT * FROM Payments;
SELECT * FROM Inventory;

-- Check committed records
SELECT * FROM Orders;

-- Check payment records
SELECT * FROM Payments;

-- Check available stock
SELECT * FROM Inventory;