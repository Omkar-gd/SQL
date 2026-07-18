PRAGMA foreign_keys = ON;

-- Students
INSERT INTO Students (student_id, first_name, last_name, email, phone, department) VALUES
(1,'Aarav','Sharma','aarav@gmail.com','9876543210','Computer Science'),
(2,'Priya','Patel','priya@gmail.com','9876543211','Information Science'),
(3,'Rahul','Kumar','rahul@gmail.com','9876543212','Computer Science'),
(4,'Sneha','Rao','sneha@gmail.com','9876543213','Electronics'),
(5,'Kiran','Singh','kiran@gmail.com','9876543214','Mechanical'),
(6,'Anjali','Nair','anjali@gmail.com','9876543215','Civil'),
(7,'Vikram','Joshi','vikram@gmail.com','9876543216','Computer Science'),
(8,'Neha','Mehta','neha@gmail.com','9876543217','Electrical'),
(9,'Rohan','Gupta','rohan@gmail.com','9876543218','Information Science'),
(10,'Meera','Reddy','meera@gmail.com','9876543219','Computer Science');

-- Courses
INSERT INTO Courses (course_id, course_name, credits, available_seats) VALUES
(101,'Database Systems',4,30),
(102,'Operating Systems',4,25),
(103,'Computer Networks',3,20),
(104,'Python Programming',3,35),
(105,'Data Structures',4,15),
(106,'Cloud Computing',3,40),
(107,'Cyber Security',3,18),
(108,'Artificial Intelligence',4,22),
(109,'Web Development',3,28),
(110,'Software Engineering',4,30);

-- Instructors
INSERT INTO Instructors (instructor_id, instructor_name, email) VALUES
(1,'Dr. Sharma','sharma@gmail.com'),
(2,'Dr. Rao','rao@gmail.com'),
(3,'Dr. Patel','patel@gmail.com'),
(4,'Dr. Singh','singh@gmail.com'),
(5,'Dr. Mehta','mehta@gmail.com'),
(6,'Dr. Gupta','gupta@gmail.com'),
(7,'Dr. Kumar','kumar@gmail.com'),
(8,'Dr. Reddy','reddy@gmail.com'),
(9,'Dr. Nair','nair@gmail.com'),
(10,'Dr. Joshi','joshi@gmail.com');

-- Enrollments
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1,1,101,'2026-07-01'),
(2,2,102,'2026-07-01'),
(3,3,103,'2026-07-02'),
(4,4,104,'2026-07-02'),
(5,5,105,'2026-07-03'),
(6,6,106,'2026-07-03'),
(7,7,107,'2026-07-04'),
(8,8,108,'2026-07-04'),
(9,9,109,'2026-07-05'),
(10,10,110,'2026-07-05');