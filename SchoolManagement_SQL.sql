
CREATE DATABASE student_management;
USE student_management;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);
CREATE TABLE marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(50),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
INSERT INTO students (student_id, name, age, department) VALUES
(1, 'Arun', 20, 'CSE'),
(2, 'Priya', 21, 'IT'),
(3, 'Rahul', 19, 'ECE'),
(4, 'Divya', 20, 'CSE');

INSERT INTO marks (student_id, subject, score) VALUES
(1, 'Maths', 85),
(1, 'Java', 90),
(2, 'Maths', 75),
(2, 'Java', 80),
(3, 'Maths', 65),
(3, 'Java', 70),
(4, 'Maths', 95),
(4, 'Java', 88);


SELECT * FROM students;
SELECT * FROM marks;
SELECT student_id, AVG(score) AS average_score
FROM marks
GROUP BY student_id;
SELECT * FROM marks
WHERE subject = 'Java'
ORDER BY score DESC
LIMIT 1;
SELECT * FROM students
WHERE department = 'CSE';
UPDATE students
SET age = 22
WHERE student_id = 2;
DELETE FROM students
WHERE student_id = 3;
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;
SELECT s.name, m.score
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.subject = 'Maths' AND m.score > 80;
SELECT * FROM students
ORDER BY name;
SELECT s.name, AVG(m.score) AS avg_score
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.name;
SELECT * FROM marks
WHERE subject = 'Maths'
ORDER BY score ASC
LIMIT 1;
SELECT student_id, COUNT(*) AS subjects_count
FROM marks
GROUP BY student_id;
SELECT DISTINCT student_id
FROM marks
WHERE score > 85;

SELECT subject, AVG(score) AS avg_score
FROM marks
GROUP BY subject;

---------------------------------------------
-- END OF PROJECT
---------------------------------------------
