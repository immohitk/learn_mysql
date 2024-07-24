-- Learn Exclusive Join (LEFT EXCLUSIVE JOIN / RIGHT EXCLUSIVE JOIN)

CREATE DATABASE exclusive_join;
USE exclusive_join;

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



-- LEFT EXCLUSIVE JOIN

SELECT *
FROM student as a
LEFT JOIN course as b
ON a.student_id = b.student_id
WHERE b.student_id IS NULL;



-- RIGHT EXCLUSIVE JOIN

SELECT *
FROM student as a
RIGHT JOIN course as b
ON a.student_id = b.student_id
WHERE a.student_id IS NULL;