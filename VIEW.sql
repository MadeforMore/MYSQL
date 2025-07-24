-- Create student table
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

-- Insert data into student table
INSERT INTO student (rollno, name, marks, city) VALUES
(101, 'anil', 78, 'Pune'),
(102, 'bhumika', 93, 'Mumbai'),
(103, 'chetan', 85, 'Mumbai'),
(104, 'dhruv', 96, 'Delhi'),
(105, 'emanuel', 92, 'Delhi'),
(106, 'farah', 82, 'Delhi');

CREATE VIEW view1 AS
SELECT rollno, name, marks from student ;

SELECT * FROM view1;
