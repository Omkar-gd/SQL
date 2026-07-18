PRAGMA foreign_keys = ON;

-- Transaction: Enroll a student and reduce available seats together

BEGIN TRANSACTION;

UPDATE Courses
SET available_seats = available_seats - 1
WHERE course_id = 101
AND available_seats > 0;

INSERT INTO Enrollments
(enrollment_id, student_id, course_id, enrollment_date)
VALUES
(11, 1, 101, '2026-07-10');

COMMIT;

-- Rollback example

BEGIN TRANSACTION;

UPDATE Courses
SET available_seats = available_seats - 1
WHERE course_id = 102;

ROLLBACK;