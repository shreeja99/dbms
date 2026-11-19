CREATE DATABASE StarDB;
USE StarDB;

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Category VARCHAR(50)
);

CREATE TABLE Time_Dim (
    Time_ID INT PRIMARY KEY,
    Date_Value DATE,
    Year INT
);

CREATE TABLE Sales (
    Sales_ID INT PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Time_ID INT,
    Amount INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY (Time_ID) REFERENCES Time_Dim(Time_ID)
);