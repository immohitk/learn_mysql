-- LEARN Aggregate Functions (Aggregate functions perform a calculation on a set of values, and return a single value.)

CREATE DATABASE aggregate_functions;
USE aggregate_functions;


CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);


INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Bhumika", 93, "A", "Mumbai"),
(103, "Chetna", 85, "B", "Mumbai"),
(104, "Druv", 96, "A", "Delhi"),
(105, "Emanuel", 12, "F", "Delhi"),
(106, "Farah", 82, "B", "Delhi");

			
DROP TABLE STUDENT;	
SELECT * FROM student;


SELECT max(marks) FROM student;
SELECT min(marks) FROM student;
SELECT avg(marks) FROM student;
SELECT count(rollno) FROM student;