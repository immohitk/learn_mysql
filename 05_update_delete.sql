-- Learn table related queries {UPDATE & DELETE} 
		
CREATE DATABASE third_update_delete;
USE third_update_delete;


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
SET SQL_SAFE_UPDATES = 1;


-- Update (to update existing rows)

UPDATE student
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET marks = 82
WHERE rollno = 105;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET marks = marks + 1;


-- Delete (to delete existing rows)

DELETE FROM student
WHERE marks < 80;