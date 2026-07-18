PRAGMA foreign_keys = ON;

-- Students Table
CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone TEXT,
    department TEXT NOT NULL
);

-- Courses Table
CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    credits INTEGER NOT NULL CHECK (credits > 0),
    available_seats INTEGER DEFAULT 30
);

-- Instructors Table
CREATE TABLE Instructors (
    instructor_id INTEGER PRIMARY KEY,
    instructor_name TEXT NOT NULL,
    email TEXT UNIQUE
);

-- Enrollments Table
CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    enrollment_date TEXT NOT NULL,

    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);