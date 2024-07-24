-- LEARN operators

/*
-- Using Operators in WHERE --

Arithmetic Operators : +(addition) , -(subtraction), *(multiplication), /(division), %(modulus)
Comparison Operators : = (equal to), != (not equal to), > , >=, <, <=
Logical Operators : AND, OR , NOT, IN, BETWEEN, ALL, LIKE, ANY
Bitwise Operators : & (Bitwise AND), | (Bitwise OR)
*/


CREATE DATABASE operators_sql;
USE operators_sql;


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


SELECT * FROM student WHERE marks > 80 AND city = "Mumbai";

SELECT * FROM student WHERE marks > 90 OR city = "Mumbai";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student WHERE city IN ("DELHI", "Mumbai");

SELECT * FROM student WHERE city NOT IN ("DELHI", "Mumbai");