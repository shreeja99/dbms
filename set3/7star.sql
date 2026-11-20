CREATE TABLE Student_Dim (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department VARCHAR(30)
);

CREATE TABLE Course_Dim (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Subject VARCHAR(30)
);

CREATE TABLE Time_Dim (
    Time_ID INT PRIMARY KEY,
    Semester INT,
    Year INT
);

CREATE TABLE Student_Fact (
    Student_ID INT,
    Course_ID VARCHAR(10),
    Time_ID INT,
    Marks INT,
    FOREIGN KEY (Student_ID) REFERENCES Student_Dim(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course_Dim(Course_ID),
    FOREIGN KEY (Time_ID) REFERENCES Time_Dim(Time_ID)
);