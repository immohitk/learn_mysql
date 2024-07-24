-- Cascading for Foreign Key

CREATE DATABASE forth_foreign_key;
USE forth_foreign_key;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

/*
ON UPDATE CASCADE :- When we create a foreign key using UPDATE CASCADE the referencing rows are updated in the child
					 table when the referenced row is updated in the parent table which has a primary key.
                     

ON DELETE CASCADE  :- When we create a foreign key using this option, it deletes the referencing rows in the child table
					  when the referenced row is deleted in the parent table which has a primary key.
*/
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dep_id INT,
FOREIGN KEY (dep_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO dept
(id, name)
VALUES
(101, "English"),
(102, "IT");


INSERT INTO teacher
(id, name, dep_id)
VALUES
(101, "ADAM", 101),
(102, "EVE", 102);

DROP TABLE dept;
DROP TABLE teacher;


SELECT * FROM dept;
SELECT * FROM teacher;


UPDATE dept
SET id = 103
WHERE id = 102;