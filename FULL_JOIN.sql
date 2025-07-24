-- Create student table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create course table
CREATE TABLE course (
    student_id INT,
    course VARCHAR(50)
);

-- Insert data into student table
INSERT INTO student (student_id, name) VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey');

-- Insert data into course table
INSERT INTO course (student_id, course) VALUES
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');


SELECT * FROM student;

SELECT * FROM course;

SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id 
UNION
SELECT *
FROM student 
RIGHT JOIN course
ON student.student_id = course.student_id ;
