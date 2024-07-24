-- Learn SQL Sub Queries (A Subquery or Inner query or a Nested query is a query within another SQL query.)

CREATE DATABASE sub_queries;
USE sub_queries;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
city VARCHAR(50)
);

INSERT INTO student
(rollno, name, marks, city)
VALUES
(101, "Anil", 78, "Pune"),
(102, "Bhumika", 93, "Mumbai"),
(103, "Chetna", 85, "Mumbai"),
(104, "Druv", 96, "Delhi"),
(105, "Emanuel", 92, "Delhi"),
(106, "Farah", 82, "Delhi");

DROP TABLE STUDENT;

SELECT * FROM student;

SELECT avg(marks) FROM student;

SELECT name
FROM student
WHERE marks > 87.667 ;



SELECT name
FROM student
WHERE marks > (SELECT avg(marks) FROM student);



SELECT rollno FROM student
WHERE rollno % 2 = 0;

SELECT name, rollno
FROM student
WHERE rollno IN (SELECT rollno FROM student WHERE rollno % 2 = 0);



SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Delhi") AS temp;


SELECT MAX(marks)
FROM student
WHERE city = "Delhi";