CREATE DATABASE OrderDB;
USE OrderDB;

CREATE TABLE ORDERS (
    Order_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Customer_Name VARCHAR(50),
    Quantity INT,
    Total_Amount DECIMAL(10,2)
);

INSERT INTO ORDERS VALUES
(1, 'Laptop', 'Amit', 2, 100000),
(2, 'Mobile', 'Riya', 3, 45000),
(3, 'Laptop', 'Rahul', 1, 50000),
(4, 'Headphones', 'Sneha', 2, 5000),
(5, 'Mobile', 'Karan', 1, 15000);

SELECT * FROM ORDERS;

SELECT SUM(Total_Amount) AS Total_Order_Amount
FROM ORDERS;

SELECT Product_Name,
       SUM(Total_Amount) AS Total_Order_Amount
FROM ORDERS
GROUP BY Product_Name;