# CampusConnect Database Assignment
## Database Engine
SQLite 3

---
# 1. Normalization Write-up
## Unnormalized Form (UNF)
An unnormalized table would store student details and course details in the same row.

Example:
Student_ID | Student_Name | Course1 | Course2 | Course3
-----------|--------------|---------|---------|---------
1 | Aarav | DBMS | OS | CN
This causes repeated data and redundancy.

---
## First Normal Form (1NF)
- Each table has a primary key.
- Every column stores only one value.
- No repeating groups exist.
Students, Courses, Instructors, and Enrollments all satisfy 1NF.
---

## Second Normal Form (2NF)
- All non-key attributes depend on the entire primary key.
- There are no partial dependencies.
Student information is stored only in the Students table.
Course information is stored only in the Courses table.
---

## Third Normal Form (3NF)
- No transitive dependencies exist.
- Non-key attributes depend only on the primary key.
For example:
- Student department depends only on student_id.
- Course name depends only on course_id.
- Instructor name depends only on instructor_id.
Thus the schema satisfies Third Normal Form.
---

# 2. Indexing Justification
Created Indexes
1. idx_enrollment_student
- Speeds up JOIN operations using student_id.
2. idx_enrollment_course
- Speeds up JOIN operations using course_id.
3. idx_student_course
- Composite index used when searching by both student_id and course_id.

### Why some columns were not indexed
Columns like first_name and department were not indexed because they have lower search frequency and indexing them would increase storage and update cost.
---

# 3. Transactions and Isolation
The transaction performs two operations together:
1. Decrease available seats in a course.
2. Insert a new enrollment.
Both operations succeed together using COMMIT.
If any error occurs, ROLLBACK cancels all changes.

### Concurrent Access Example
Suppose two students try to enroll in the last available seat of the same course at the same time.
Without proper isolation, both may see one seat available and both may enroll, causing inconsistent data.

### Isolation Level
Serializable isolation is the safest choice because it prevents lost updates and ensures transactions execute one after another.
---

## Files Included
- schema.sql
- insert_data.sql
- queries.sql
- indexes.sql
- transactions.sql
- README.md