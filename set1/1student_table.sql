CREATE TABLE student (
  roll_no INT,
  name    VARCHAR(30),
  dept    VARCHAR(20),
  marks   INT
)
PARTITION BY RANGE (marks) (
  PARTITION p_low  VALUES LESS THAN (40),
  PARTITION p_mid  VALUES LESS THAN (75),
  PARTITION p_high VALUES LESS THAN (101)
);

INSERT INTO student VALUES (1, 'Amit',  'CSE',  35);
INSERT INTO student VALUES (2, 'Neha',  'IT',   68);
INSERT INTO student VALUES (3, 'Rahul', 'ENTC', 82);
INSERT INTO student VALUES (4, 'Priya', 'CSE',  91);
INSERT INTO student VALUES (5, 'Karan', 'IT',   55);


UPDATE student SET marks = 45 WHERE roll_no = 1;   -- row moves from p_low to p_mid
DELETE FROM student WHERE roll_no = 5;


SELECT * FROM student PARTITION (p_low);
SELECT * FROM student PARTITION (p_mid);
SELECT * FROM student PARTITION (p_high);

 