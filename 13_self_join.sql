-- Learn Self Join (It is a regular join but the table is joined with itself.)

CREATE DATABASE self_join;
USE self_join;

CREATE TABLE employe(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);



INSERT INTO employe
(id, name, manager_id)
VALUES
(101, "Adam", 103),
(102, "Bob", 104),
(103, "Casey", NULL),
(104, "Donald", 103);



DROP TABLE employe;
SELECT * FROM employe;


SELECT a.name as manager_name, b.name
FROM employe as a
JOIN employe as b
ON a.id = b.manager_id;