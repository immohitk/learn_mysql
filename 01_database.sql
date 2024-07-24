-- Creating our First Database
/*
-- Signed & Unsigned --

TINYINT UNSIGNED (0 to 255)
TINYINT (-128 to 127)



-- Types of SQL Commands --

DDL (Data Definition Language) : create, alter, rename, truncate & drop
DML (Data Manipulation Language) : select, insert, update & delete
DCL (Data Control Language) : grant & revoke permission to users
DQL (Data Query Language) : select
TCL (Transaction Control Language) : start transaction, commit, rollback etc



-- Constraints (SQL constraints are used to specify rules for data in a table.) --

NOT NULL :- columns cannot have a null value.
UNIQUE :- all values in column are different.
PRIMARY KEY :- makes a column unique & not null but used only for one.
FOREIGN KEY :- prevent actions that would destroy links between tables.
DEFAULT :- sets the default value of a column.
CHECK :- it can limit the values allowed in a column.
*/


-- CREATE DATABASE db_name;				-- to create the database
CREATE DATABASE first_database;

-- USE db_name;							-- to use the database
USE first_database;


/*CREATE TABLE table_name (				-- to create the table under database
column_name1 datatype constraint,
column_name2 datatype constraint,
column_name3 datatype constraint
); */
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);




/*INSERT INTO table_name 				-- to insert the data in the table
( column_name1, column_name2, column_name3)
VALUES
(value1 of column_name1, value1 of column_name2, value1 of column_name3),
(value2 of column_name1, value2 of column_name2, value2 of column_name3),
(value3 of column_name1, value3 of column_name2, value3 of column_name3),
 */
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Bhumika", 93, "A", "Mumbai"),
(103, "Chetna", 85, "B", "Mumbai"),
(104, "Druv", 96, "A", "Delhi"),
(105, "Emanuel", 12, "F", "Delhi"),
(106, "Farah", 82, "B", "Delhi");


-- DROP TABLE table_name;				-- to drop the table
DROP TABLE STUDENT;


-- SELECT ALL(*) FROM table_name;       -- Used to retrieve data from database. DQL (Data Query Language)
SELECT * FROM student;


SELECT name, marks FROM student;		-- to select any data from the database.