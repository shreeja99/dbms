CREATE DATABASE SalesDB;
USE SalesDB;

CREATE TABLE SALES (
    Sale_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Quantity INT,
    Amount DECIMAL(10,2)
);

INSERT INTO SALES VALUES
(1, 'Laptop', 2, 100000),
(2, 'Mobile', 3, 45000),
(3, 'Laptop', 1, 50000),
(4, 'Headphones', 2, 5000),
(5, 'Mobile', 1, 15000);

SELECT * FROM SALES;

SELECT SUM(Amount) AS Total_Sales
FROM SALES;

SELECT Product_Name, SUM(Amount) AS Total_Sales
FROM SALES
GROUP BY Product_Name;