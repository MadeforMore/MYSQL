CREATE DATABASE college;
USE college;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "C", "Mumbai"),
(105, "emanuel", 96, "D", "Delhi"),
(106, "farah", 82, "A", "Delhi");

ALTER TABLE student 
CHANGE COLUMN name full_name VARCHAR(50);

SELECT marks 
FROM student
where marks > 80
ORDER BY marks DESC;


ALTER TABLE student 
DROP grade;

SELECT * FROM student ;
