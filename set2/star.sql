CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Dimension Table 1
CREATE TABLE Book (
    Book_ID INT PRIMARY KEY,
    Book_Name VARCHAR(50),
    Category VARCHAR(50)
);

-- Dimension Table 2
CREATE TABLE Member (
    Member_ID INT PRIMARY KEY,
    Member_Name VARCHAR(50),
    City VARCHAR(50)
);

-- Dimension Table 3
CREATE TABLE Time_Dim (
    Time_ID INT PRIMARY KEY,
    Issue_Date DATE,
    Year INT
);

-- Fact Table
CREATE TABLE Issue_Fact (
    Issue_ID INT PRIMARY KEY,
    Book_ID INT,
    Member_ID INT,
    Time_ID INT,
    Fine INT,
    FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    FOREIGN KEY (Time_ID) REFERENCES Time_Dim(Time_ID)
);

-- Insert Records
INSERT INTO Book VALUES
(1, 'Python', 'Programming'),
(2, 'DBMS', 'Database');

INSERT INTO Member VALUES
(101, 'Amit', 'Pune'),
(102, 'Riya', 'Mumbai');

INSERT INTO Time_Dim VALUES
(1, '2026-01-10', 2026),
(2, '2026-02-15', 2026);

INSERT INTO Issue_Fact VALUES
(1, 1, 101, 1, 50),
(2, 2, 102, 2, 100);

-- Display Fact Table
SELECT * FROM Issue_Fact;