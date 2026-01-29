

3. Create table Student
CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);
4. Create table Course
CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(50),
    Credits INT
);
5. Add column City to Student
ALTER TABLE Student
ADD City VARCHAR(30);
6. Add column Semester to Student
ALTER TABLE Student
ADD Semester INT;
7. Rename column Phone to MobileNo
ALTER TABLE Student
CHANGE Phone MobileNo VARCHAR(15);
8. Drop table Course
DROP TABLE Course;

9. Insert 5 records into Student
INSERT INTO Student VALUES
(101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3),
(102, 'Amit', 'ECE', 21, '9876501234', 'Mumbai', 4),
(103, 'Neha', 'CSE', 22, '9123456780', 'Kolkata', 5),
(104, 'Pooja', 'ME', 19, '9988776655', 'Chennai', 2),
(105, 'Ravi', 'CSE', 23, '9001122334', 'Bangalore', 6);
10. Display all records
SELECT * FROM Student;
11. Display RollNo and Name only
SELECT RollNo, Name FROM Student;
12. Display students from CSE department
SELECT * FROM Student
WHERE Dept = 'CSE';
13. Display students with age > 20
SELECT * FROM Student
WHERE Age > 20;
14. Update department of RollNo = 101 to ECE
UPDATE Student
SET Dept = 'ECE'
WHERE RollNo = 101;
15. Update city of Rahul to Patna
UPDATE Student
SET City = 'Patna'
WHERE Name = 'Rahul';
16. Increase age of all students by 1
UPDATE Student
SET Age = Age + 1;
17. Delete student with RollNo = 105
DELETE FROM Student
WHERE RollNo = 105;
18. Delete all records from Student (table remains)
DELETE FROM Student;








