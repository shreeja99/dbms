CREATE DATABASE StarDB;
USE StarDB;


CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);


CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50)
);


CREATE TABLE Time_Dim (
    time_id INT PRIMARY KEY,
    date_value DATE,
    year INT
);


CREATE TABLE Sales (
    sales_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    time_id INT,
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (time_id) REFERENCES Time_Dim(time_id)
);


INSERT INTO Customer VALUES (1, 'Amit', 'Pune');
INSERT INTO Product VALUES (101, 'Laptop', 'Electronics');
INSERT INTO Time_Dim VALUES (1, '2026-01-10', 2026);

INSERT INTO Sales VALUES (1, 1, 101, 1, 50000);


SELECT * FROM Sales;

CREATE DATABASE SnowflakeDB;
USE SnowflakeDB;

-- Country Table
CREATE TABLE Country (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50)
);

-- City Table
CREATE TABLE City (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(50),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES Country(country_id)
);

-- Customer Table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city_id INT,
    FOREIGN KEY (city_id) REFERENCES City(city_id)
);

-- Category Table
CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- Product Table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

-- Fact Table
CREATE TABLE Sales (
    sales_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Insert Records
INSERT INTO Country VALUES (1, 'India');
INSERT INTO City VALUES (1, 'Pune', 1);
INSERT INTO Customer VALUES (1, 'Amit', 1);

INSERT INTO Category VALUES (1, 'Electronics');
INSERT INTO Product VALUES (101, 'Laptop', 1);

INSERT INTO Sales VALUES (1, 1, 101, 50000);

-- Display Result
SELECT * FROM Sales;