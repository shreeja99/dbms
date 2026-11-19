CREATE DATABASE ATM_DB;
USE ATM_DB;

CREATE TABLE Account (
    Account_No INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Balance INT
);

CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY,
    Account_No INT,
    Amount INT,
    Status VARCHAR(20)
);

INSERT INTO Account VALUES
(101, 'Rahul', 20000);


 --Successful transaction using COMMIT
START TRANSACTION;

-- Check account balance
SELECT Balance FROM Account
WHERE Account_No = 101;

-- Deduct withdrawal amount
UPDATE Account
SET Balance = Balance - 5000
WHERE Account_No = 101
AND Balance >= 5000;

-- Record transaction
INSERT INTO Transactions
VALUES (1, 101, 5000, 'Successful');

COMMIT;

-- Display updated records
SELECT * FROM Account;
SELECT * FROM Transactions;

 --Failed transaction using ROLLBACK
START TRANSACTION;

-- Attempt another withdrawal
UPDATE Account
SET Balance = Balance - 30000
WHERE Account_No = 101;

-- Cancel transaction
ROLLBACK;

-- Display balance
SELECT * FROM Account;

-- Check account details
SELECT * FROM Account;

-- Check transaction history
SELECT * FROM Transactions;