-- Learn Right Join (Returns all records from the right table, and the matched records from the left table)

CREATE DATABASE right_join;
USE right_join;

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


SELECT *
FROM student as a
RIGHT JOIN course as b
ON a.student_id = b.student_id;