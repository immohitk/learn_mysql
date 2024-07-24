-- Learn MySQL Views (A view is a virtual table based on the result-set of an SQL statement)

/*
A view always shows up-to-date data. The
database engine recreates the view, every time a
user queries it.
*/

CREATE DATABASE mysql_view;
USE mysql_view;

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

CREATE VIEW view1 AS
SELECT rollno, name, marks FROM student;

SELECT * FROM view1;

DROP VIEW view1;