SHOW DATABASES;
USE student_db;
CREATE TABLE student (
    id INT,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    marks INT
);
INSERT INTO student VALUES
(1, 'Amit', 20, 'CS', 85),
(2, 'Neha', 21, 'CS', 90),
(3, 'Rahul', 20, 'IT', 70),
(4, 'Sneha', 22, 'IT', 88),
(5, 'Priya', 21, 'ECE', NULL),
(6, 'Karan', 20, 'CS', 60);
SELECT COUNT(*) AS total_student FROM student;
SELECT COUNT(marks) FROM student;
SELECT SUM(marks) AS total_marks FROM students;
SELECT AVG(marks) AS average_marks FROM students;
SELECT MIN(marks) AS min_marks, MAX(marks) AS max_marks
FROM student;
SELECT age, COUNT(*) AS total_student
FROM student
GROUP BY age;
SELECT department, AVG(marks) AS avg_marks
FROM student
GROUP BY department;
SELECT department, COUNT(*) AS total_student
FROM student
GROUP BY department;
SELECT department, COUNT(*) AS total_student
FROM student
GROUP BY department
HAVING COUNT(*) > 2;
SELECT department, AVG(marks) AS avg_marks
FROM student
WHERE marks IS NOT NULL
GROUP BY department
HAVING AVG(marks) > 75;
SELECT COUNT(marks) FROM student;
SELECT COUNT(*) FROM student;



