CREATE DATABASE aryan ;
USE aryan ;


CREATE TABLE dept(
    id INT PRIMARY KEY ,
    subject VARCHAR(50)
);

CREATE TABLE teacher(
    teacher_id INT PRIMARY KEY ,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES dept(id)
);

INSERT INTO dept (id, subject)
VALUES 
(1, "Math"),
(2, "Physics"),
(3, "Chemistry");

INSERT INTO teacher (teacher_id, name, dept_id)
VALUES 
(101, "Mr. Shah", 1),
(102, "Ms. Rao", 2),
(103, "Dr. Kumar", 3),
(104, "Mrs. Mehta", 1);

SELECT * FROM dept;
SELECT * FROM teacher;





