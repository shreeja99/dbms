CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE STUDENT_RESULT (
    Student_ID INT,
    Student_Name VARCHAR(50),
    Subject VARCHAR(50),
    Marks INT,
    Semester INT
);

INSERT INTO STUDENT_RESULT VALUES
(1, 'Rahul', 'DBMS', 85, 5),
(2, 'Priya', 'DBMS', 90, 5),
(3, 'Amit', 'ML', 75, 5),
(4, 'Sneha', 'ML', 80, 5),
(5, 'Riya', 'Java', 95, 5);

SELECT * FROM STUDENT_RESULT;

SELECT AVG(Marks) AS Average_Marks
FROM STUDENT_RESULT;

SELECT Subject, AVG(Marks) AS Average_Marks
FROM STUDENT_RESULT
GROUP BY Subject;