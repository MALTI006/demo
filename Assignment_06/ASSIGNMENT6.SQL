SELECT COUNT (*) AS Total_Students FROM Student;

TOTAL_STUDENTS
--------------
           100

SELECT COUNT (*) AS Total_Faculty FROM Faculty;

TOTAL_FACULTY
-------------
           50

 SELECT COUNT(*)AS Total_Courses FROM Course;

TOTAL_COURSES
-------------
           30

SELECT MAX(Credits)AS Max_Credits FROM Course;

MAX_CREDITS
-----------
          4

SELECT MIN(Credits)AS Min_Credits FROM Course;

MIN_CREDITS
-----------
          3


SELECT Department_ID,COUNT(*)AS Number_of_Students
   FROM Student
   GROUP BY Department_ID;

DEPARTMENT_ID NUMBER_OF_STUDENTS
------------- ------------------
           10                 10
           11                 10
           12                 10
           13                 10
           14                 10
           15                 10
           16                 10
           17                 11
           18                  9
           19                 10




SELECT Department_ID,COUNT(*)AS Number_of_Faculty
   FROM Faculty
  GROUP BY Department_ID;

DEPARTMENT_ID NUMBER_OF_FACULTY
------------- -----------------
           10                 5
           11                 5
           12                 5
           13                 5
           14                 5
           15                 5
           16                 5
           17                 5
           18                 5
           19                 5



SELECT Department_ID,COUNT(*)AS Number_0f_Courses
  FROM Course
   GROUP BY Department_ID;

DEPARTMENT_ID NUMBER_0F_COURSES
------------- -----------------
           11                 5
           12                 5
           13                 5
           14                 8
           15                 1
           17                 5
           10                 1

 

 SELECT Semester ,COUNT(*)AS Total_Enrollments
   FROM Enrollment
   GROUP BY Semester;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
5                                   34

 
 SELECT Grade ,COUNT(*)AS Total_Students
   FROM Enrollment
   GROUP BY Grade;

GRADE TOTAL_STUDENTS
----- --------------
A                 13
A+                 7
B+                 4
B                  7
C                  3

 SELECT Department_ID,COUNT(*)AS Total_Students
   FROM Student
    GROUP BY Department_ID
   HAVING COUNT(*)>3;

DEPARTMENT_ID TOTAL_STUDENTS
------------- --------------
           10             10
           11             10
           12             10
           13             10
           14             10
           15             10
           16             10
           17             11
           18              9
           19             10



SELECT Semester,COUNT (*)AS Total_Enrollments
    FROM ENrollment
   GROUP BY Semester
    HAVING COUNT(*)>2;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
5                                   34

SELECT Grade,COUNT(*)AS Total_Students
    FROM Enrollment
    GROUP BY Grade
   HAVING COUNT(*)>1;

GRADE TOTAL_STUDENTS
----- --------------
A                 13
A+                 7
B+                 4
B                  7
C                  3

 SELECT Department_ID,COUNT(*)AS Total_Courses
  FROM Course
    GROUP BY Department_ID
    HAVING COUNT(*)>1;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
           11             5
           12             5
           13             5
           14             8
           17             5

  SELECT Course_ID,COUNT(Student_ID)AS Enrolled_Students
  FROM Enrollment
   GROUP BY Course_ID;

 COURSE_ID ENROLLED_STUDENTS
---------- -----------------
    105501                 5
    100301                 1
    100302                 1
    100303                 1
    100304                 1
    100305                 1
    107501                 3
    107503                 1
    110201                 1
    110202                 1
    110203                 1

 COURSE_ID ENROLLED_STUDENTS
---------- -----------------
    110204                 1
    110205                 1
    108701                 2
    108702                 1
    108703                 1
    108704                 1
    107201                 1
    107202                 1
    107203                 1
    107204                 1
    107205                 1

 COURSE_ID ENROLLED_STUDENTS
---------- -----------------
    109101                 1
    109102                 1
    109103                 1
    109104                 1
    109105                 1



 


 SELECT Department_ID,COUNT(*)AS Total_Students
    FROM Student
    GROUP BY Department_ID;

DEPARTMENT_ID TOTAL_STUDENTS
------------- --------------
           10             10
           11             10
           12             10
           13             10
           14             10
           15             10
           16             10
           17             11
           18              9
           19             10


 SELECT C.Course_Name,COUNT(E.Student_ID)AS Enrolled_Students
     FROM Course C
    INNER JOIN ENROLLMENT E
    ON C.Course_ID=E.Course_ID
    GROUP BY C.Course_Name;

COURSE_NAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
ARTIFICIAL INTELLIGENCE
                5

MECHANICS OF MATERIALS
                1

HYDRAULIC ENGINEERING
                1


COURSE_NAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
TRANSPORTATION ENGINEERING
                1

GEOTECHNICAL ENGINEERING
                1

ENVIRONMENTAL SCIENCE
                1


COURSE_NAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
HEAT TRANSFER
                3

MANUFACTURING PROCESS
                1

CAPSTONE DESIGN PROJECT
                1


COURSE_NAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
CONTROL SYSTEMS
                1

POWER ELECTRONICS
                1

ANALOG AND DIGITAL COMMUNICATION
                1


COURSE_NAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
POWER SYSTEM -I
                1

MECHANICAL ENGINEERING
                2

ENGINEERING GEOLOGY
                1


COURSE_NAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
STRUCTURAL ANALYSIS
                1

MANAGEMENT
                1

MICROPROCESSOR
                1


COURSE_NAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
DESIGN ANALYSIS OF ALGORITHM
                1

COMPILER DESIGN
                1

OPERATING SYSTEM
                1


COURSE_NAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
SOFTWARE TRAINING
                1

ANALOG ELECTRONICS CIRCUIT
                1

DATA STRUCTURAL AND ALGORITHM
                1


COURSE_NAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
OBJECT ORIENTED PROGRAMMING
                1

TECHNICAL WRITING
                1

MATHEMATICS
                1




 SELECT F.Name,COUNT(C.Course_ID)AS Courses_Taught
    FROM Faculty F
    INNER JOIN Course C
    ON F.Faculty_ID=C.Faculty_ID
    GROUP BY F.Name;

NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
E.HAQUE
             1

KUNAL KUMAR
             1

VICKY ANAND
             1


NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
MAUSAM BHARTI
             1

RAUSHAN ANAND
             1

NITISH KUMAR
             1


NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
HARE KRISHNA MISHRA
             1

ASHISH KUMAR SUMAN
             1

AJAY GIRI
             1


NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
UTTAM KUMAR
             1

BABLU DAS
             1

FIROZ AKHTAR
             1


NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
BHAVESH NANDAN
             1

ABHIMANYU MANDAL
             1

MITESH KUMAR
             1


NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
AKHILESH KUMAR
             1

RUPESH KUMAR
             1

N. KUMAR
             1


NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
PANKAJ KUMAR
             1

NISHIKANT KUMAR
             1

MD.HAFEEZULLAH
             1


NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
MANISHA KUMARI SINGH
             1

SHAKILA KUMARI
             1

ARUN KUMAR
             1


NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
PRAVEEN KUMAR
             1

ABHISHEK  KUMAR
             1

SANJAY  KUMAR
             1


NAME
--------------------------------------------------------------------------------
COURSES_TAUGHT
--------------
PINTU  KUMAR
             1

SINTU JHA
             1

ANISHA SINGH
             1

 SELECT C.Course_Name,MAX(E.Grade)AS Max_Grade
    FROM Course C
    INNER JOIN Enrollment E
    ON C.Course_ID=E.Course_ID
    GROUP BY C.Course_Name;

COURSE_NAME
--------------------------------------------------------------------------------
MAX_G
-----
ARTIFICIAL INTELLIGENCE
B+

MECHANICS OF MATERIALS
A

HYDRAULIC ENGINEERING
A+


COURSE_NAME
--------------------------------------------------------------------------------
MAX_G
-----
TRANSPORTATION ENGINEERING
B

GEOTECHNICAL ENGINEERING
B+

ENVIRONMENTAL SCIENCE
C


COURSE_NAME
--------------------------------------------------------------------------------
MAX_G
-----
HEAT TRANSFER
B

MANUFACTURING PROCESS
C

CAPSTONE DESIGN PROJECT
A+


COURSE_NAME
--------------------------------------------------------------------------------
MAX_G
-----
CONTROL SYSTEMS
A

POWER ELECTRONICS
B

ANALOG AND DIGITAL COMMUNICATION
B+


COURSE_NAME
--------------------------------------------------------------------------------
MAX_G
-----
POWER SYSTEM -I
A

MECHANICAL ENGINEERING
A+

ENGINEERING GEOLOGY
B


COURSE_NAME
--------------------------------------------------------------------------------
MAX_G
-----
STRUCTURAL ANALYSIS
C

MANAGEMENT
A

MICROPROCESSOR
A


COURSE_NAME
--------------------------------------------------------------------------------
MAX_G
-----
DESIGN ANALYSIS OF ALGORITHM
A+

COMPILER DESIGN
B

OPERATING SYSTEM
A


COURSE_NAME
--------------------------------------------------------------------------------
MAX_G
-----
SOFTWARE TRAINING
B+

ANALOG ELECTRONICS CIRCUIT
A

DATA STRUCTURAL AND ALGORITHM
A+


COURSE_NAME
--------------------------------------------------------------------------------
MAX_G
-----
OBJECT ORIENTED PROGRAMMING
B

TECHNICAL WRITING
A

MATHEMATICS
A

 SELECT Department_ID,COUNT(*)AS Total_Courses
    FROM Course
   GROUP BY Department_ID;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
           11             5
           12             5
           13             5
           14             8
           15             1
           17             5
           10             1


 SELECT Semester ,COUNT(Student_ID) AS Total_Students
    FROM Enrollment
    GROUP BY Semester;

SEMESTER             TOTAL_STUDENTS
-------------------- --------------
5                                34

 SELECT Course_ID,COUNT(Student_ID)AS Total_Students
    FROM Enrollment
    GROUP BY Course_ID
    HAVING COUNT(Student_ID)>2;

 COURSE_ID TOTAL_STUDENTS
---------- --------------
    105501              5
    107501              3
