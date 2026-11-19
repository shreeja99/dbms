CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE STUDENT (
    Roll_No INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department VARCHAR(50),
    City VARCHAR(50),
    Marks INT
);

INSERT INTO STUDENT VALUES
(1, 'Rahul', 'IT', 'Pune', 85),
(2, 'Priya', 'CS', 'Mumbai', 90),
(3, 'Amit', 'IT', 'Pune', 75),
(4, 'Sneha', 'ENTC', 'Nashik', 80),
(5, 'Riya', 'CS', 'Pune', 95);

SELECT * FROM STUDENT;

SELECT MAX(Marks) AS Maximum_Marks
FROM STUDENT;

SELECT Department, AVG(Marks) AS Average_Marks
FROM STUDENT
GROUP BY Department;