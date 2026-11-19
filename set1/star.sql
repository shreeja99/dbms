CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Dimension Table 1
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department VARCHAR(50)
);

-- Dimension Table 2
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50)
);

-- Dimension Table 3
CREATE TABLE Time_Dim (
    Time_ID INT PRIMARY KEY,
    Year INT,
    Semester INT
);

-- Fact Table
CREATE TABLE Student_Fact (
    Fact_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Time_ID INT,
    Marks INT,
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),
    FOREIGN KEY (Time_ID) REFERENCES Time_Dim(Time_ID)
);

-- Insert Records
INSERT INTO Student VALUES
(1, 'Amit', 'IT'),
(2, 'Riya', 'Computer');

INSERT INTO Course VALUES
(101, 'DBMS'),
(102, 'Python');

INSERT INTO Time_Dim VALUES
(1, 2026, 1),
(2, 2026, 2);

INSERT INTO Student_Fact VALUES
(1, 1, 101, 1, 85),
(2, 2, 102, 2, 90);

-- Display Fact Table
SELECT * FROM Student_Fact;