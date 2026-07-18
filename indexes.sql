PRAGMA foreign_keys = ON;

-- Index on student_id used in JOIN queries
CREATE INDEX IF NOT EXISTS idx_enrollment_student
ON Enrollments(student_id);

-- Index on course_id used in JOIN queries
CREATE INDEX IF NOT EXISTS idx_enrollment_course
ON Enrollments(course_id);

-- Composite index used for queries filtering by student and course
CREATE INDEX IF NOT EXISTS idx_student_course
ON Enrollments(student_id, course_id);