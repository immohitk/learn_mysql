-- Learn ALTER (to change the schema)

CREATE DATABASE fifth_alter;
USE fifth_alter;

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



-- ADD Column

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;



-- DROP Column

ALTER TABLE student
DROP COLUMN age;



-- MODIFY Column (modify datatype/ constraint)


ALTER TABLE student
MODIFY age VARCHAR (2);




-- CHANGE Column (rename)

ALTER TABLE student
CHANGE age stu_age INT;

ALTER TABLE student
CHANGE name full_name VARCHAR(50);



-- DROP Column

ALTER TABLE student
DROP COLUMN stu_age;




-- RENAME Table

ALTER TABLE stu
RENAME student;



-- Truncate (to delete table's data)

TRUNCATE TABLE student ;