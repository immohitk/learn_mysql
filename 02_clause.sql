-- Learn Clause

/*
-- General Order --

SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s) ASC;
*/
		
CREATE DATABASE second_clause;
USE second_clause;


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

		

-- WHERE Clause -> To define some conditions using Operators

SELECT * FROM student WHERE marks > 80 ;
SELECT * FROM student WHERE city = "Mumbai" ;
SELECT * FROM student WHERE city = "Mumbai" AND marks > 80;
SELECT * FROM student WHERE marks+10 > 100 ;



-- Limit Clause -> Sets an upper limit on number of (tuples)rows to be returned

SELECT * FROM student LIMIT 3;



-- Order By Clause -> To sort in ascending (ASC) or descending order (DESC)

SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;



-- Group By Clause -> Groups rows that have the same values into summary rows. It collects data from multiple records and groups the result by one or more column.

SELECT city, count(name) FROM student GROUP BY city;


-- ORDER By clause 

SELECT city, avg(marks)
FROM student 
GROUP BY city
ORDER BY city;


-- Having Clause -> Similar to Where i.e. applies some condition on rows. Used when we want to apply any condition after grouping.

SELECT city, count(name) FROM student GROUP BY city HAVING max(marks) > 90;