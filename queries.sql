PRAGMA foreign_keys = ON;

-- Query 1: Display students from Computer Science or Electronics department (IN)
SELECT * 
FROM Students
WHERE department IN ('Computer Science', 'Electronics');

-- Query 2: Display courses having credits between 3 and 4 (BETWEEN)
SELECT *
FROM Courses
WHERE credits BETWEEN 3 AND 4;

-- Query 3: Display instructors whose email is available (IS NOT NULL)
SELECT *
FROM Instructors
WHERE email IS NOT NULL;

-- Query 4: Count students in each department (GROUP BY + HAVING)
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department
HAVING COUNT(*) >= 1;

-- Query 5: INNER JOIN - Students with their enrolled courses
SELECT s.first_name,
       s.last_name,
       c.course_name
FROM Students s
INNER JOIN Enrollments e
ON s.student_id = e.student_id
INNER JOIN Courses c
ON e.course_id = c.course_id;

-- Query 6: LEFT JOIN - Show all students even if not enrolled
SELECT s.first_name,
       s.last_name,
       c.course_name
FROM Students s
LEFT JOIN Enrollments e
ON s.student_id = e.student_id
LEFT JOIN Courses c
ON e.course_id = c.course_id;

-- Query 7: SQLite does not support RIGHT JOIN.
-- Using LEFT JOIN by reversing the table order.
SELECT c.course_name,
       s.first_name,
       s.last_name
FROM Courses c
LEFT JOIN Enrollments e
ON c.course_id = e.course_id
LEFT JOIN Students s
ON e.student_id = s.student_id;

-- Query 8: Scalar Subquery - Students enrolled in the course with maximum credits
SELECT first_name,
       last_name
FROM Students
WHERE student_id IN
(
    SELECT student_id
    FROM Enrollments
    WHERE course_id =
    (
        SELECT course_id
        FROM Courses
        ORDER BY credits DESC
        LIMIT 1
    )
);

-- Query 9: Correlated Subquery - Students enrolled in at least one course
SELECT first_name,
       last_name
FROM Students s
WHERE EXISTS
(
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
);

-- Query 10: EXISTS - Courses having enrolled students
SELECT course_name
FROM Courses c
WHERE EXISTS
(
    SELECT 1
    FROM Enrollments e
    WHERE e.course_id = c.course_id
);

-- Query 11: UNION - Students and instructors email list
SELECT email
FROM Students
UNION
SELECT email
FROM Instructors;

-- Query 12: Window Function - Rank students by student ID
SELECT student_id,
       first_name,
       ROW_NUMBER() OVER (ORDER BY student_id) AS Row_No
FROM Students;