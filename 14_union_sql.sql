-- Learn Union (It is used to combine the result-set of two or more SELECT statements. Gives UNIQUE records.)

/*
To use it : every SELECT should have same no. of columns
		  : columns must have similar data types
          : columns in every SELECT should be in same order
*/

CREATE DATABASE union_sql;
USE union_sql;

CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(50)
);


CREATE TABLE course(
student_id INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO student
(student_id, name)
VALUES
(101, "Adam"),
(102, "Bob"),
(103, "Casey");


INSERT INTO course
(student_id, course)
VALUES
(102, "English"),
(105, "Math"),
(103, "Science"),
(107, "Computer Science");

DROP TABLE student;
DROP TABLE course;

SELECT * FROM student;
SELECT * FROM course;


SELECT student_id FROM student
UNION
SELECT student_id FROM course;


SELECT student_id FROM student
UNION ALL
SELECT student_id FROM course;