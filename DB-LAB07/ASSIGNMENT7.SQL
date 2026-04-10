PART 'A'

SELECT Name
FROM Student
WHERE Department_id=(
    SELECT Department_id
    FROM Student
    WHERE Student_id ='23105128001'
);
SELECT Name
FROM Student
WHERE Gender = (
    SELECT Gender
    FROM Student
    WHERE student_id = '23110128001'
);
SELECT Name
FROM Student
WHERE department_id = (
    SELECT department_id
    FROM Student
    WHERE student_id = '23118128001'
);

PART 'B'

SELECT Name
FROM Student
WHERE department_id IN (
    SELECT department_id
    FROM Student
    WHERE gender = 'F'
);

SELECT Name
FROM Student
WHERE student_id IN (
    SELECT student_id
    FROM Enrollment
);
SELECT Name
FROM Student
WHERE student_id IN (
    SELECT student_id
    FROM Enrollment
);
PART 'C'

SELECT Course_name
FROM Course
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
);

SELECT Name
FROM Student
WHERE Student_id > (
    SELECT AVG(Student_id)
    FROM Student
);

SELECT Department_id
FROM Student
GROUP BY Department_id
HAVING COUNT(*) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Student
        GROUP BY Department_id
    )
);

PART 'D'

SELECT Name
FROM Student
WHERE Student_id IN (
    SELECT Student_id
    FROM Enrollment
);

SELECT Name
FROM Student
WHERE Department_id IS NOT NULL;

SELECT Course_name
FROM Course
WHERE Course_id IN (
    SELECT Course_id
    FROM Enrollment
);

PART 'E'

SELECT Course_name
FROM Course
WHERE Credits = (
    SELECT MAX(Credits)
    FROM Course
);

SELECT Name
FROM Student
WHERE Student_id IN (
    SELECT Student_id
    FROM Enrollment
    GROUP BY Student_id
    HAVING COUNT(*) > 1
);
SELECT Department_id
FROM Student
GROUP BY Department_id
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Student
        GROUP BY Department_id
    )
);

PART 'F'

SELECT Name
FROM Student
WHERE Student_id IN (
    SELECT Student_id
    FROM Enrollment
    WHERE Course_id IN (
        SELECT Course_id
        FROM Enrollment
        WHERE Student_id = '23105128001'
    )
);

SELECT Name
FROM Student
WHERE Student_id NOT IN (
    SELECT Student_id
    FROM Enrollment
);

SELECT Course_name
FROM Course
WHERE Course_id NOT IN (
    SELECT Course_id
    FROM Enrollment
);