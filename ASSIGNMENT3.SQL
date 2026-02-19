

SQL>CREATE TABLE Department (
  2      Department_ID INT PRIMARY KEY,
  3      Department_Name VARCHAR(100) NOT NULL,
  4      Office_Location VARCHAR(100)
  5  );

Table created.

SQL> CREATE TABLE Student (
  2      Student_ID INT PRIMARY KEY,
  3      Name VARCHAR(100) NOT NULL,
  4      Date_of_Birth DATE,
  5      Gender VARCHAR(10),
  6      Contact_Number VARCHAR(15),
  7      Department_ID INT,
  8      CONSTRAINT fk_student_department
  9          FOREIGN KEY (Department_ID)
 10          REFERENCES Department(Department_ID)
 11  );

Table created.

SQL> CREATE TABLE Faculty (
  2      Faculty_ID INT PRIMARY KEY,
  3      Name VARCHAR(100) NOT NULL,
  4      Designation VARCHAR(50),
  5      Email VARCHAR(100),
  6      Department_ID INT,
  7      CONSTRAINT fk_faculty_department
  8          FOREIGN KEY (Department_ID)
  9          REFERENCES Department(Department_ID)
 10  );

Table created.

SQL> CREATE TABLE Course (
  2      Course_ID INT PRIMARY KEY,
  3      Course_Name VARCHAR(100) NOT NULL,
  4      Credits INT CHECK (Credits > 0),
  5      Department_ID INT,
  6      Faculty_ID INT,
  7      CONSTRAINT fk_course_department
  8          FOREIGN KEY (Department_ID)
  9          REFERENCES Department(Department_ID),
 10      CONSTRAINT fk_course_faculty
 11          FOREIGN KEY (Faculty_ID)
 12          REFERENCES Faculty(Faculty_ID)
 13  );

Table created.

SQL> CREATE TABLE Enrollment (
  2      Student_ID INT,
  3      Course_ID INT,
  4      Semester VARCHAR(20),
  5      Grade VARCHAR(5),
  6      PRIMARY KEY (Student_ID, Course_ID),
  7      CONSTRAINT fk_enroll_student
  8          FOREIGN KEY (Student_ID)
  9          REFERENCES Student(Student_ID),
 10      CONSTRAINT fk_enroll_course
 11          FOREIGN KEY (Course_ID)
 12          REFERENCES Course(Course_ID)
 13  );

Table created.

SQL> DESC Department;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPARTMENT_ID                             NOT NULL NUMBER(38)
 DEPARTMENT_NAME                           NOT NULL VARCHAR2(100)
 OFFICE_LOCATION                                    VARCHAR2(100)

SQL> INSERT INTO Department VALUES ('010','COMPUTER SCIENCE ENGINEERING','BLOCK A');

1 row created.

SQL> INSERT INTO Department VALUES ('011','CIVIL ENGINEERING','BLOCK B');

1 row created.

SQL> INSERT INTO Department VALUES ('012','MECHANICAL ENGINEERING','BLOCK C');

1 row created.

SQL> INSERT INTO Department VALUES ('013','ELECTRICAL ENGINEERING','BLOCK D');

1 row created.

SQL> INSERT INTO Department VALUES ('014','CIVIL ENGINEERING WITH COMPUTER APPLICATION','BLOCK E');

1 row created.

SQL> INSERT INTO Department VALUES ('015','ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING','BLOCK F');

1 row created.

SQL> INSERT INTO Department VALUES ('016','ELECTRONICS AND COMMUNICATION ENGINEERING','BLOCK G');

1 row created.

SQL> INSERT INTO Department VALUES ('017','3D ANIMATION ENGINEERING','BLOCK H');

1 row created.

SQL> INSERT INTO Department VALUES ('018','INFORMATION TECHNOLOGY','BLOCK I');

1 row created.

SQL> INSERT INTO Department VALUES ('019','SOFTWARE ENGINEERING','BLOCK J');

1 row created.

SQL> SELECT *FROM Department;

DEPARTMENT_ID
-------------
DEPARTMENT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
           10
COMPUTER SCIENCE ENGINEERING
BLOCK A

           11
CIVIL ENGINEERING
BLOCK B

DEPARTMENT_ID
-------------
DEPARTMENT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------

           12
MECHANICAL ENGINEERING
BLOCK C

           13
ELECTRICAL ENGINEERING

DEPARTMENT_ID
-------------
DEPARTMENT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
BLOCK D

           14
CIVIL ENGINEERING WITH COMPUTER APPLICATION
BLOCK E

           15

DEPARTMENT_ID
-------------
DEPARTMENT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING
BLOCK F

           16
ELECTRONICS AND COMMUNICATION ENGINEERING
BLOCK G


DEPARTMENT_ID
-------------
DEPARTMENT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
           17
3D ANIMATION ENGINEERING
BLOCK H

           18
INFORMATION TECHNOLOGY
BLOCK I

DEPARTMENT_ID
-------------
DEPARTMENT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------

           19
SOFTWARE ENGINEERING
BLOCK J


10 rows selected.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER(38)
 NAME                                      NOT NULL VARCHAR2(100)
 DATE_OF_BIRTH                                      DATE
 GENDER                                             VARCHAR2(10)
 CONTACT_NUMBER                                     VARCHAR2(15)
 DEPARTMENT_ID                                      NUMBER(38)

SQL> INSERT INTO Student VALUES (23105128001,'SRISHTI KUMARI',DATE '2000-01-11','F','9987653421',010);

1 row created.

SQL> INSERT INTO Student VALUES (23105128002,'MALTI  KUMARI',DATE '2001-01-12','F','7845321234',010);

1 row created.

SQL> INSERT INTO Student VALUES (23105128003,'BABLI  KUMARI',DATE '2002-01-13','F','7823456734',010);

1 row created.

SQL> INSERT INTO Student VALUES (23105128004,'ASHA  KUMARI',DATE '2002-01-14','F','7823456700',010);

1 row created.

SQL> INSERT INTO Student VALUES (23105128005,'SMITA  KUMARI',DATE '2002-01-15','F','7823456780',010);

1 row created.

SQL> INSERT INTO Student VALUES (23105128006,'SHWETA  KUMARI',DATE '2002-01-16','F','7823456790',010);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128007,'KOMAL  KUMARI',DATE '2002-01-17','F','7823456767',010);

1 row created.

SQL> INSERT INTO Student VALUES (23105128008,'NEHA  KUMARI',DATE '2002-01-18','F','7823456767',010);

1 row created.

SQL> INSERT INTO Student VALUES (23105128009,'RITIKA  KUMARI',DATE '2002-01-19','F','7823478657',010);

1 row created.

SQL> INSERT INTO Student VALUES (23105128010,'ARCHNA  KUMARI',DATE '2002-01-19','F','7867432199',010);

1 row created.

SQL> INSERT INTO Student VALUES (23105128011,'CHANDNI  KUMARI',DATE '2003-02-20','F','7832154367',011);

1 row created.

SQL> INSERT INTO Student VALUES (23105128012,'AMIT KUMAR',DATE '2003-02-21','M','7832154785',011);

1 row created.

SQL> INSERT INTO Student VALUES (23105128013,'ROHAN KUMAR',DATE '2003-02-23','M','7832112345',011);

1 row created.

SQL> INSERT INTO Student VALUES (23105128014,'ANKIT KUMAR',DATE '2003-02-23','M','7832145578',011);

1 row created.

SQL> INSERT INTO Student VALUES (23105128015,'DEEP KUMAR',DATE '2003-03-23','M','7835632100',011);

1 row created.

SQL> INSERT INTO Student VALUES (23105128016,'HARSHIT KUMAR',DATE '2003-03-24','M','2385632100',011);

1 row created.

SQL> INSERT INTO Student VALUES (23105128017,'ALOK KUMAR',DATE '2003-03-25','M','2365435340',011);

1 row created.

SQL> INSERT INTO Student VALUES (23105128018,'ABHISHEK KUMAR',DATE '2003-03-08','M','6543217667',011);

1 row created.

SQL> INSERT INTO Student VALUES (23105128019,'SUMIT KUMAR',DATE '2003-03-09','M','6675432167',011);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128020,'SANJAY KUMAR',DATE '2003-03-10','M','6675765216',011);

1 row created.

SQL> INSERT INTO Student VALUES (23105128021,'SANDEEP KUMAR',DATE '2004-04-10','M','9905258759',012);

1 row created.

SQL> INSERT INTO Student VALUES (23105128022,'MANISH KUMAR',DATE '2004-04-11','M','9905289097',012);

1 row created.

SQL> INSERT INTO Student VALUES (23105128023,'SUBRAJ KUMAR',DATE '2004-04-12','M','8867289097',012);

1 row created.

SQL> INSERT INTO Student VALUES (23105128024,'SUDIP KUMAR',DATE '2004-04-22','M','8765432800',012);

1 row created.

SQL> INSERT INTO Student VALUES (23105128025,'SURUCHI KUMARI',DATE '2004-05-12','F','7765456437',012);

1 row created.

SQL> INSERT INTO Student VALUES (23105128026,'UJALA KUMARI',DATE '2004-05-14','F','8865456437',012);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128027,'SHRUTI KUMARI',DATE '2004-05-16','F','6660043120',012);

1 row created.

SQL> INSERT INTO Student VALUES (23105128028,'SURBHI KUMARI',DATE '2004-05-26','F','6632167876',012);

1 row created.

SQL> INSERT INTO Student VALUES (23105128029,'ARTI KUMARI',DATE '2005-05-26','F','9932156432',012);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128030,'SNEHA KUMARI',DATE '2005-06-01','F','6543678953',012);

1 row created.

SQL> INSERT INTO Student VALUES (23105128031,'SANDHYA KUMARI',DATE '2006-06-02','F','6578097654',013);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128032,'KHUSBOO KUMARI',DATE '2006-06-04','F','3454665534',013);

1 row created.

SQL> INSERT INTO Student VALUES (23105128033,'PRIYANSHU KUMARI',DATE '2006-06-05','F','3454667865',013);

1 row created.

SQL> INSERT INTO Student VALUES (23105128034,'DOLLY KUMARI',DATE '2006-06-06','F','3455432167',013);

1 row created.

SQL> INSERT INTO Student VALUES (23105128035,'SONAM KUMARI',DATE '2006-06-07','F','3455764223',013);

1 row created.

SQL> INSERT INTO Student VALUES (23105128036,'SWATI KUMARI',DATE '2006-06-08','F','3454124576',013);

1 row created.

SQL> INSERT INTO Student VALUES (23105128037,'SUHANI KUMARI',DATE '2006-06-09','F','9976524576',013);

1 row created.

SQL> INSERT INTO Student VALUES (23105128038,'MEGHA KUMARI',DATE '2006-06-10','F','9965433276',013);

1 row created.

SQL> INSERT INTO Student VALUES (23105128039,'JULI KUMARI',DATE '2006-06-30','F','9965654321',013);

1 row created.

SQL> INSERT INTO Student VALUES (23105128040,'PUHU KUMARI',DATE '2006-07-03','F','9886544321',013);

1 row created.

SQL> INSERT INTO Student VALUES (23105128041,'ADITI KUMARI',DATE '2006-07-04','F','9953215645',014);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128042,'EISTA KUMARI',DATE '2007-07-07','F','6754375645',014);

1 row created.

SQL> INSERT INTO Student VALUES (23105128043,'GANGA KUMARI',DATE '2007-07-08','F','6634275645',014);

1 row created.

SQL> INSERT INTO Student VALUES (23105128044,'GANGESH KUMAR',DATE '2007-07-09','M','6645321785',014);

1 row created.

SQL> INSERT INTO Student VALUES (23105128045,'ATUL KUMAR',DATE '2007-07-10','M','6987654785',014);

1 row created.

SQL> INSERT INTO Student VALUES (23105128046,'ADITYA KUMAR',DATE '2007-07-11','M','6987786585',014);

1 row created.

SQL> INSERT INTO Student VALUES (23105128047,'SAURABH KUMAR',DATE '2007-07-12','M','6989765433',014);

1 row created.

SQL> INSERT INTO Student VALUES (23105128048,'SURAJ KUMAR',DATE '2007-07-15','M','8763421345',014);

1 row created.

SQL> INSERT INTO Student VALUES (23105128049,'KAILASH KUMAR',DATE '2007-07-16','M','5466453785',014);

1 row created.

SQL> INSERT INTO Student VALUES (23105128050,'TARUN KUMAR',DATE '2007-07-26','M','7653421565',014);

1 row created.

SQL> INSERT INTO Student VALUES (23105128051,'NEELAM KUMARI',DATE '2008-08-26','F','2344656576',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128052,'KAMINI KUMARI',DATE '2008-08-01','F','2346678576',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128053,'LALITA KUMARI',DATE '2008-08-02','F','7646678576',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128054,'MADHURI KUMARI',DATE '2008-08-03','F','9976478576',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128055,'JANVI KUMARI',DATE '2008-08-04','F','9954334576',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128056,'BABITA KUMARI',DATE '2008-09-04','F','9631771134',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128057,'SUNITA KUMARI',DATE '2008-09-06','F','5643332734',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128058,'MANJAY KUMAR',DATE '2002-09-06','M','5643332456',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128059,'NANDU KUMAR',DATE '2002-02-06','M','5643335678',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128060,'GUDDU KUMAR',DATE '2002-02-07','M','5642345678',015);

1 row created.

SQL> INSERT INTO Student VALUES (23105128061,'MAHESH KUMAR',DATE '2001-02-07','M','5642348764',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128062,'GOVIND KUMAR',DATE '2001-02-08','M','9965848764',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128063,'HIMANSHU KUMAR',DATE '2001-02-18','M','9956484876',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128064,'ANSHU KUMAR',DATE '2001-02-19','M','6665484876',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128065,'NIKESH KUMAR',DATE '2001-02-20','M','9995484876',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128066,'PRATIK KUMAR',DATE '2001-02-21','M','9995476406',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128067,'PRADEEP KUMAR',DATE '2001-05-15','M','8834576406',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128068,'TILAK KUMAR',DATE '2001-05-11','M','7765442306',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128069,'HARDIK KUMAR',DATE '2001-05-15','M','7799654406',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128070,'ANITA KUMARI',DATE '2001-11-19','F','8899654406',016);

1 row created.

SQL> INSERT INTO Student VALUES (23105128071,'NIKKI KUMARI',DATE '2001-12-11','F','8899654098',017);

1 row created.

SQL> INSERT INTO Student VALUES (23105128072,'PINKY KUMARI',DATE '2001-12-13','F','8899612345',017);

1 row created.

SQL> INSERT INTO Student VALUES (23105128073,'SANJU KUMARI',DATE '2001-12-14','F','7865432186',017);

1 row created.

SQL> INSERT INTO Student VALUES (23105128074,'SUNITA KUMARI',DATE '2001-12-15','F','7865409675',017);

1 row created.

SQL> INSERT INTO Student VALUES (23105128075,'KAJAL KUMARI',DATE '2001-12-16','F','7324509675',017);

1 row created.

SQL> INSERT INTO Student VALUES (23105128076,'MUSKAN KUMARI',DATE '2001-12-17','F','7843267245',017);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128077,'ANUPAM KUMARI',DATE '2001-12-18','F','6785467245',017);

1 row created.

SQL> INSERT INTO Student VALUES (23105128078,'ANANYA KUMARI',DATE '2001-12-19','F','6785456789',017);

1 row created.

SQL> INSERT INTO Student VALUES (23105128079,'ANNU KUMARI',DATE '2001-12-20','F','7790756789',017);

1 row created.

SQL> INSERT INTO Student VALUES (23105128080,'ANSHU KUMARI',DATE '2001-12-21','F','9954456789',017);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128081,'AMISHA KUMARI',DATE '2001-12-22','F','9974456789',017);

1 row created.
SQL>  INSERT INTO Student VALUES (23105128082,'MUSKAN KUMARI',DATE '2001-01-22','F','8974456789',018);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128083,'MANISHA KUMARI',DATE '2001-01-02','F','9974456789',018);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128084,'RADHA KUMARI',DATE '2005-01-12','F','9974456789',018);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128085,'SONAM KUMARI',DATE '2004-01-12','F','7874456789',018);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128086,'SOBHA KUMARI',DATE '2005-11-12','F','9174456789',018);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128087,'RANI KUMARI',DATE '2005-01-22','F','8974456789',018);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128088,'SONI KUMARI',DATE '2005-01-18','F','8974456789',018);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128089,'SALONI KUMARI',DATE '2005-11-18','F','8774456789',018);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128090,'RITU KUMARI',DATE '2005-01-11','F','9574456789',018);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128091,'NITU KUMARI',DATE '2005-11-02','F','9274456789',019);

1 row created.

SQL>   INSERT INTO Student VALUES (23105128092,'SONU KUMAR',DATE '2005-05-02','M','9294456789',019);

1 row created.

SQL>   INSERT INTO Student VALUES (23105128093,'SHIVAM KUMARI',DATE '2004-01-12','M','9287456789',019);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128094,'RUPAM KUMARI',DATE '2003-01-12','F','8287456789',019);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128095,'RUPESH ROY',DATE '2003-11-12','M','9187456789',019);

1 row created.

SQL> INSERT INTO Student VALUES (23105128096,'RAHUL KUMAR',DATE '2003-04-12','M','9976546789',019);

1 row created.

SQL> INSERT INTO Student VALUES (23105128097,'YASH KUMAR',DATE '2003-04-13','M','7654346789',019);

1 row created.

SQL>  INSERT INTO Student VALUES (23105128098,'HARSHIT KUMAR',DATE '2003-04-14','M','9964306789',019);

1 row created.

SQL> INSERT INTO Student VALUES (23105128099,'HARSH KUMAR',DATE '2003-04-15','M','9060567456',019);

1 row created.

SQL> INSERT INTO Student VALUES (23105128100,'NITISH KUMAR',DATE '2003-04-16','M','9965467456',019);

1 row created.

SQL> SELECT *FROM Student;

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
SRISHTI KUMARI
11-JAN-00 F          9987653421                 10

2.3105E+10
MALTI  KUMARI
12-JAN-01 F          7845321234                 10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
BABLI  KUMARI
13-JAN-02 F          7823456734                 10

2.3105E+10
ASHA  KUMARI

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
14-JAN-02 F          7823456700                 10

2.3105E+10
SMITA  KUMARI
15-JAN-02 F          7823456780                 10

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
SHWETA  KUMARI
16-JAN-02 F          7823456790                 10

2.3105E+10
KOMAL  KUMARI
17-JAN-02 F          7823456767                 10


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
NEHA  KUMARI
18-JAN-02 F          7823456767                 10

2.3105E+10
RITIKA  KUMARI
19-JAN-02 F          7823478657                 10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
ARCHNA  KUMARI
19-JAN-02 F          7867432199                 10

2.3105E+10
CHANDNI  KUMARI

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
20-FEB-03 F          7832154367                 11

2.3105E+10
AMIT KUMAR
21-FEB-03 M          7832154785                 11

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
ROHAN KUMAR
23-FEB-03 M          7832112345                 11

2.3105E+10
ANKIT KUMAR
23-FEB-03 M          7832145578                 11


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
DEEP KUMAR
23-MAR-03 M          7835632100                 11

2.3105E+10
HARSHIT KUMAR
24-MAR-03 M          2385632100                 11

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
ALOK KUMAR
25-MAR-03 M          2365435340                 11

2.3105E+10
ABHISHEK KUMAR

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
08-MAR-03 M          6543217667                 11

2.3105E+10
SUMIT KUMAR
09-MAR-03 M          6675432167                 11

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
SANJAY KUMAR
10-MAR-03 M          6675765216                 11

2.3105E+10
SANDEEP KUMAR
10-APR-04 M          9905258759                 12


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
MANISH KUMAR
11-APR-04 M          9905289097                 12

2.3105E+10
SUBRAJ KUMAR
12-APR-04 M          8867289097                 12

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
SUDIP KUMAR
22-APR-04 M          8765432800                 12

2.3105E+10
SURUCHI KUMARI

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
12-MAY-04 F          7765456437                 12

2.3105E+10
UJALA KUMARI
14-MAY-04 F          8865456437                 12

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
SHRUTI KUMARI
16-MAY-04 F          6660043120                 12

2.3105E+10
SURBHI KUMARI
26-MAY-04 F          6632167876                 12


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
ARTI KUMARI
26-MAY-05 F          9932156432                 12

2.3105E+10
SNEHA KUMARI
01-JUN-05 F          6543678953                 12

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
SANDHYA KUMARI
02-JUN-06 F          6578097654                 13

2.3105E+10
KHUSBOO KUMARI

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
04-JUN-06 F          3454665534                 13

2.3105E+10
PRIYANSHU KUMARI
05-JUN-06 F          3454667865                 13

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
DOLLY KUMARI
06-JUN-06 F          3455432167                 13

2.3105E+10
SONAM KUMARI
07-JUN-06 F          3455764223                 13


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
SWATI KUMARI
08-JUN-06 F          3454124576                 13

2.3105E+10
SUHANI KUMARI
09-JUN-06 F          9976524576                 13

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
MEGHA KUMARI
10-JUN-06 F          9965433276                 13

2.3105E+10
JULI KUMARI

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
30-JUN-06 F          9965654321                 13

2.3105E+10
PUHU KUMARI
03-JUL-06 F          9886544321                 13

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
ADITI KUMARI
04-JUL-06 M          9953215645                 14

2.3105E+10
EISTA KUMARI
07-JUL-07 M          6754375645                 14


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
GANGA KUMARI
08-JUL-07 F          6634275645                 14

2.3105E+10
GANGESH KUMAR
09-JUL-07 M          6645321785                 14

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
ATUL KUMAR
10-JUL-07 M          6987654785                 14

2.3105E+10
ADITYA KUMAR

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
11-JUL-07 M          6987786585                 14

2.3105E+10
SAURABH KUMAR
12-JUL-07 M          6989765433                 14

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
SURAJ KUMAR
15-JUL-07 M          8763421345                 14

2.3105E+10
KAILASH KUMAR
16-JUL-07 M          5466453785                 14


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
TARUN KUMAR
26-JUL-07 M          7653421565                 14

2.3105E+10
NEELAM KUMARI
26-AUG-08 F          2344656576                 15

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
KAMINI KUMARI
01-AUG-08 F          2346678576                 15

2.3105E+10
LALITA KUMARI

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
02-AUG-08 F          7646678576                 15

2.3105E+10
MADHURI KUMARI
03-AUG-08 F          9976478576                 15

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
JANVI KUMARI
04-AUG-08 F          9954334576                 15

2.3105E+10
BABITA KUMARI
04-SEP-08 F          9631771134                 15


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
SUNITA KUMARI
06-SEP-08 F          5643332734                 15

2.3105E+10
MANJAY KUMAR
06-SEP-02 M          5643332456                 15

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
NANDU KUMAR
06-FEB-02 M          5643335678                 15

2.3105E+10
GUDDU KUMAR

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
07-FEB-02 M          5642345678                 15

2.3105E+10
MAHESH KUMAR
07-FEB-01 M          5642348764                 16

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
GOVIND KUMAR
08-FEB-01 M          9965848764                 16

2.3105E+10
HIMANSHU KUMAR
18-FEB-01 M          9956484876                 16


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
ANSHU KUMAR
19-FEB-01 M          6665484876                 16

2.3105E+10
NIKESH KUMAR
20-FEB-01 M          9995484876                 16

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
PRATIK KUMAR
21-FEB-01 M          9995476406                 16

2.3105E+10
PRADEEP KUMAR

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
15-MAY-01 M          8834576406                 16

2.3105E+10
TILAK KUMAR
11-MAY-01 M          7765442306                 16

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
HARDIK KUMAR
15-MAY-01 M          7799654406                 16

2.3105E+10
ANITA KUMARI
19-NOV-01 F          8899654406                 16


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
NIKKI KUMARI
11-DEC-01 F          8899654098                 17

2.3105E+10
PINKY KUMARI
13-DEC-01 F          8899612345                 17

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
SANJU KUMARI
14-DEC-01 F          7865432186                 17

2.3105E+10
SUNITA KUMARI

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
15-DEC-01 F          7865409675                 17

2.3105E+10
KAJAL KUMARI
16-DEC-01 F          7324509675                 17

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
MUSKAN KUMARI
17-DEC-01 F          7843267245                 17

2.3105E+10
ANUPAM KUMARI
18-DEC-01 F          6785467245                 17


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
ANANYA KUMARI
19-DEC-01 F          6785456789                 17

2.3105E+10
ANNU KUMARI
20-DEC-01 F          7790756789                 17

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
ANSHU KUMARI
21-DEC-01 F          9954456789                 17

2.3105E+10
AMISHA KUMARI

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
22-DEC-01 F          9974456789                 17

2.3105E+10
MUSKAN KUMARI
22-JAN-01 F          8974456789                 18

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
MANISHA KUMARI
02-JAN-01 F          9974456789                 18

2.3105E+10
RADHA KUMARI
12-JAN-05 F          9974456789                 18


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
SONAM KUMARI
12-JAN-04 F          7874456789                 18

2.3105E+10
SOBHA KUMARI
12-NOV-05 F          9174456789                 18

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
RANI KUMARI
22-JAN-05 F          8974456789                 18

2.3105E+10
SONI KUMARI

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
18-JAN-05 F          8974456789                 18

2.3105E+10
SALONI KUMARI
18-NOV-05 F          8774456789                 18

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
RITU KUMARI
11-JAN-05 F          9574456789                 18

2.3105E+10
NITU KUMARI
02-NOV-05 F          9274456789                 19


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
SONU KUMAR
02-MAY-05 M          9294456789                 19

2.3105E+10
SHIVAM KUMARI
12-JAN-04 M          9287456789                 19

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------

2.3105E+10
RUPAM KUMARI
12-JAN-03 F          8287456789                 19

2.3105E+10
RUPESH ROY

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
12-NOV-03 M          9187456789                 19

2.3105E+10
RAHUL KUMAR
12-APR-03 M          9976546789                 19

2.3105E+10

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
YASH KUMAR
13-APR-03 M          7654346789                 19

2.3105E+10
HARSHIT KUMAR
14-APR-03 M          9964306789                 19


STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------
2.3105E+10
HARSH KUMAR
15-APR-03 M          9060567456                 19

2.3105E+10
NITISH KUMAR
16-APR-03 M          9965467456                 19

STUDENT_ID
----------
NAME
--------------------------------------------------------------------------------
DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
--------- ---------- --------------- -------------


100 rows selected.

SQL>DESC Faculty;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTY_ID                                NOT NULL NUMBER(38)
 NAME                                      NOT NULL VARCHAR2(100)
 DESIGNATION                                        VARCHAR2(50)
 EMAIL                                              VARCHAR2(100)
 DEPARTMENT_ID                                      NUMBER(38)

SQL> INSERT INTO Faculty VALUES (101,'SUJEET KUMAR','ASSOCIATE PROFESSOR','ksujeet.cs@gmail.com',010);

1 row created.

SQL> INSERT INTO Faculty VALUES (102,'MURLIDHAR PRASAD SINGH','ASSOCIATE PROFESSOR','singhmurlidhar@gmail.com',010);

1 row created.

SQL> INSERT INTO Faculty VALUES (103,'MD.IZHAR','ASSOCIATE PROFESSOR','mdizhar2000@gmail.com',010);

1 row created.

SQL> INSERT INTO Faculty VALUES (104,'PRITY KUMARI CHAUDHARY','ASSOCIATE PROFESSOR','prity.chaudhary@gmail.com',010);

1 row created.

SQL> INSERT INTO Faculty VALUES (105,'E.HAQUE','ASSOCIATE PROFESSOR','ehtashama90@gmail.com',010);

1 row created.

SQL> INSERT INTO Faculty VALUES (106,'KUNAL KUMAR','ASSOCIATE PROFESSOR','kunal56@gmail.com',011);

1 row created.

SQL> INSERT INTO Faculty VALUES (107,'VICKY ANAND','ASSOCIATE PROFESSOR','vickyanad09@gmail.com',011);

1 row created.

SQL> INSERT INTO Faculty VALUES (108,'MAUSAM BHARTI',' PROFESSOR','mausambharti67@gmail.com',011);

1 row created.

SQL> INSERT INTO Faculty VALUES (109,'RAUSHAN ANAND',' ASSOCIATE PROFESSOR','raushan23@gmail.com',011);

1 row created.

SQL> INSERT INTO Faculty VALUES (110,'NITISH KUMAR',' ASSOCIATE PROFESSOR','nitishkumar11@gmail.com',011);

1 row created.

SQL> INSERT INTO Faculty VALUES (111,'HARE KRISHNA MISHRA',' ASSOCIATE PROFESSOR','harekrishna78@gmail.com',012);

1 row created.

SQL> INSERT INTO Faculty VALUES (112,'ASHISH KUMAR SUMAN',' ASSOCIATE PROFESSOR','suman54@gmail.com',012);

1 row created.

SQL> INSERT INTO Faculty VALUES (113,'ASHISH KUMAR',' ASSOCIATE PROFESSOR','ashish6578@gmail.com',012);

1 row created.

SQL> INSERT INTO Faculty VALUES (114,'AJAY GIRI',' ASSOCIATE PROFESSOR','giri123@gmail.com',012);

1 row created.

SQL> INSERT INTO Faculty VALUES (115,'UTTAM KUMAR',' ASSOCIATE PROFESSOR','uttam345@gmail.com',012);

1 row created.

SQL> INSERT INTO Faculty VALUES (116,'BABLU DAS',' ASSOCIATE PROFESSOR','babludas367@gmail.com',013);

1 row created.

SQL> INSERT INTO Faculty VALUES (117,'FIROZ AKHTAR',' ASSOCIATE PROFESSOR','firoz34@gmail.com',013);

1 row created.

SQL> INSERT INTO Faculty VALUES (118,'BHAVESH NANDAN',' ASSOCIATE PROFESSOR','bhavesh89@gmail.com',013);

1 row created.

SQL> INSERT INTO Faculty VALUES (119,'ABHIMANYU MANDAL',' ASSOCIATE PROFESSOR','abhi89@gmail.com',013);

1 row created.

SQL> INSERT INTO Faculty VALUES (120,'MITESH KUMAR',' ASSOCIATE PROFESSOR','mitesh765@gmail.com',013);

1 row created.

SQL> INSERT INTO Faculty VALUES (121,'AKHILESH KUMAR',' ASSOCIATE PROFESSOR','akhilesh90@gmail.com',014);

1 row created.

SQL> INSERT INTO Faculty VALUES (122,'RUPESH KUMAR',' ASSOCIATE PROFESSOR','rupesh34566@gmail.com',014);

1 row created.

SQL> INSERT INTO Faculty VALUES (123,'N. KUMAR',' ASSOCIATE PROFESSOR','kumar987@gmail.com',014);

1 row created.

SQL> INSERT INTO Faculty VALUES (124,'PANKAJ KUMAR',' ASSOCIATE PROFESSOR','pankajkum234@gmail.com',014);

1 row created.

SQL> INSERT INTO Faculty VALUES (125,'NISHIKANT KUMAR',' ASSOCIATE PROFESSOR','nishikant432@gmail.com',014);

1 row created.

SQL> INSERT INTO Faculty VALUES (126,'MD.HAFEEZULLAH',' ASSOCIATE PROFESSOR','hafeezullah234@gmail.com',015);

1 row created.

SQL> INSERT INTO Faculty VALUES (127,'MANISHA KUMARI SINGH',' ASSOCIATE PROFESSOR','manisha678@gmail.com',015);

1 row created.

SQL> INSERT INTO Faculty VALUES (128,'SHAKILA KUMARI',' ASSOCIATE PROFESSOR','sakila44@gmail.com',015);

1 row created.

SQL> INSERT INTO Faculty VALUES (129,'ARUN KUMAR',' ASSOCIATE PROFESSOR','arunkumar345@gmail.com',015);

1 row created.

SQL> INSERT INTO Faculty VALUES (130,'PRAVEEN KUMAR',' ASSOCIATE PROFESSOR','praveen89@gmail.com',015);

1 row created.

SQL> INSERT INTO Faculty VALUES (131,'RAKESH KUMAR',' ASSOCIATE PROFESSOR','rakesh890@gmail.com',016);

1 row created.

SQL>  INSERT INTO Faculty VALUES (132,'ANSHU KUMAR',' ASSOCIATE PROFESSOR','anush90@gmail.com',016);

1 row created.

SQL> INSERT INTO Faculty VALUES (133,'MANOJ KUMAR',' ASSOCIATE PROFESSOR','manoj87@gmail.com',016);

1 row created.

SQL> INSERT INTO Faculty VALUES (134,'GANGESH  KUMAR',' ASSOCIATE PROFESSOR','gangesh567@gmail.com',016);

1 row created.

SQL> INSERT INTO Faculty VALUES (135,'LALAN  KUMAR',' ASSOCIATE PROFESSOR','lalan42@gmail.com',016);

1 row created.

SQL> INSERT INTO Faculty VALUES (136,'ABHISHEK  KUMAR',' ASSOCIATE PROFESSOR','abhishekkumar456@gmail.com',017);

1 row created.

SQL> INSERT INTO Faculty VALUES (137,'SANJAY  KUMAR',' ASSOCIATE PROFESSOR','sanjay78@gmail.com',017);

1 row created.

SQL> INSERT INTO Faculty VALUES (138,'PINTU  KUMAR',' ASSOCIATE PROFESSOR','pintu78@gmail.com',017);

1 row created.

SQL> INSERT INTO Faculty VALUES (139,'SINTU JHA',' ASSOCIATE PROFESSOR','sintu654@gmail.com',017);

1 row created.

SQL> INSERT INTO Faculty VALUES (140,'ANISHA SINGH',' ASSOCIATE PROFESSOR','anisha789@gmail.com',017);

1 row created.

SQL> INSERT INTO Faculty VALUES (141,'ANNU SINGH',' ASSOCIATE PROFESSOR','annu09@gmail.com',018);

1 row created.

SQL> INSERT INTO Faculty VALUES (142,'SUPRIYA JHA',' ASSOCIATE PROFESSOR','supriya65@gmail.com',018);

1 row created.

SQL> INSERT INTO Faculty VALUES (143,'KAJAL SINGH',' ASSOCIATE PROFESSOR','kajalsingh92@gmail.com',018);

1 row created.

SQL> INSERT INTO Faculty VALUES (144,'DURGESH RATHORE',' ASSOCIATE PROFESSOR','durgeshrathore56@gmail.com',018);

1 row created.

SQL> INSERT INTO Faculty VALUES (145,'ANKESH ROY',' ASSOCIATE PROFESSOR','ankeshroy345@gmail.com',018);

1 row created.

SQL> INSERT INTO Faculty VALUES (146,'JITENDRA MISHRA',' ASSOCIATE PROFESSOR','jitendra23@gmail.com',019);

1 row created.

SQL> INSERT INTO Faculty VALUES (147,'SURAJ KUMAR',' ASSOCIATE PROFESSOR','suraj456@gmail.com',019);

1 row created.

SQL> INSERT INTO Faculty VALUES (148,'PRAKASH KUMAR',' ASSOCIATE PROFESSOR','prakash876@gmail.com',019);

1 row created.

SQL> INSERT INTO Faculty VALUES (149,'ATUL KUMAR',' ASSOCIATE PROFESSOR','atulkumar9800@gmail.com',019);

1 row create.
FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       101
SUJEET KUMAR
ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
ksujeet.cs@gmail.com
           10


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       102
MURLIDHAR PRASAD SINGH
ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
singhmurlidhar@gmail.com
           10


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       103
MD.IZHAR
ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
mdizhar2000@gmail.com
           10


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       104
PRITY KUMARI CHAUDHARY
ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
prity.chaudhary@gmail.com
           10


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       105
E.HAQUE
ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
ehtashama90@gmail.com
           10


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       106
KUNAL KUMAR
ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
kunal56@gmail.com
           11


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       107
VICKY ANAND
ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
vickyanad09@gmail.com
           11


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       108
MAUSAM BHARTI
 PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
mausambharti67@gmail.com
           11


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       109
RAUSHAN ANAND
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
raushan23@gmail.com
           11


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       110
NITISH KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
nitishkumar11@gmail.com
           11


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       111
HARE KRISHNA MISHRA
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
harekrishna78@gmail.com
           12


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       112
ASHISH KUMAR SUMAN
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
suman54@gmail.com
           12


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       113
ASHISH KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
ashish6578@gmail.com
           12


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       114
AJAY GIRI
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
giri123@gmail.com
           12


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       115
UTTAM KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
uttam345@gmail.com
           12


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       116
BABLU DAS
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
babludas367@gmail.com
           13


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       117
FIROZ AKHTAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
firoz34@gmail.com
           13


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       118
BHAVESH NANDAN
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
bhavesh89@gmail.com
           13


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       119
ABHIMANYU MANDAL
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
abhi89@gmail.com
           13


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       120
MITESH KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
mitesh765@gmail.com
           13


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       121
AKHILESH KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
akhilesh90@gmail.com
           14


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       122
RUPESH KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
rupesh34566@gmail.com
           14


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       123
N. KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
kumar987@gmail.com
           14


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       124
PANKAJ KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
pankajkum234@gmail.com
           14


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       125
NISHIKANT KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
nishikant432@gmail.com
           14


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       126
MD.HAFEEZULLAH
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
hafeezullah234@gmail.com
           15


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       127
MANISHA KUMARI SINGH
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
manisha678@gmail.com
           15


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       128
SHAKILA KUMARI
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
sakila44@gmail.com
           15


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       129
ARUN KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
arunkumar345@gmail.com
           15


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       130
PRAVEEN KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
praveen89@gmail.com
           15


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       131
RAKESH KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
rakesh890@gmail.com
           16


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       132
ANSHU KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
anush90@gmail.com
           16


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       133
MANOJ KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
manoj87@gmail.com
           16


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       134
GANGESH  KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
gangesh567@gmail.com
           16


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       135
LALAN  KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
lalan42@gmail.com
           16


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       136
ABHISHEK  KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
abhishekkumar456@gmail.com
           17


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       137
SANJAY  KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
sanjay78@gmail.com
           17


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       138
PINTU  KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
pintu78@gmail.com
           17


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       139
SINTU JHA
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
sintu654@gmail.com
           17


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       140
ANISHA SINGH
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
anisha789@gmail.com
           17


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       141
ANNU SINGH
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
annu09@gmail.com
           18


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       142
SUPRIYA JHA
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
supriya65@gmail.com
           18


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       143
KAJAL SINGH
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
kajalsingh92@gmail.com
           18


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       144
DURGESH RATHORE
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
durgeshrathore56@gmail.com
           18


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       145
ANKESH ROY
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
ankeshroy345@gmail.com
           18


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       146
JITENDRA MISHRA
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
jitendra23@gmail.com
           19


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       147
SURAJ KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
suraj456@gmail.com
           19


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       148
PRAKASH KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
prakash876@gmail.com
           19


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       149
ATUL KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
atulkumar9800@gmail.com
           19


FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
       150
SANJAY KUMAR
 ASSOCIATE PROFESSOR

FACULTY_ID
----------
NAME
--------------------------------------------------------------------------------
DESIGNATION
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
DEPARTMENT_ID
-------------
sanju89@gmail.com
           19


50 rows selected.

SQL>DESC COURSE;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_ID                                 NOT NULL NUMBER(38)
 COURSE_NAME                               NOT NULL VARCHAR2(100)
 CREDITS                                            NUMBER(38)
 DEPARTMENT_ID                                      NUMBER(38)
 FACULTY_ID                                         NUMBER(38)

SQL> INSERT INTO Course VALUES (105502,'DATABASE MANAGEMENT SYSTEMS',4,010,101);

1 row created.

SQL> INSERT INTO Course VALUES (105501,'ARTIFICIAL INTELLIGENCE',4,010,105);

1 row created.

SQL> INSERT INTO Course VALUES (105503,'FORMAL LANGUAGE AND AUTOMATA',4,010,103);

1 row created.

SQL> INSERT INTO Course VALUES (105504,'SOFTWARE ENGINEERING',4,010,126);

1 row created.
SQL>INSERT INTO Course VALUES (100301,'MECHANICS OF MATERIALS',3,011,106);

1 row created.

SQL> INSERT INTO Course VALUES (100302,'HYDRAULIC ENGINEERING',3,011,107);

1 row created.

SQL> INSERT INTO Course VALUES (100303,'TRANSPORTATION ENGINEERING',3,011,108);

1 row created.

SQL> INSERT INTO Course VALUES (100304,'GEOTECHNICAL ENGINEERING',3,011,109);

1 row created.

SQL> INSERT INTO Course VALUES (100305,'ENVIRONMENTAL SCIENCE',3,011,110);

1 row created.

SQL> INSERT INTO Course VALUES (107501,'HEAT TRANSFER',4,012,114);

1 row created.

SQL> INSERT INTO Course VALUES (107502,'FLUID MACHINERY',4,012,115);

1 row created.

SQL> INSERT INTO Course VALUES (107503,'MANUFACTURING PROCESS',4,012,116);

1 row created.

SQL> INSERT INTO Course VALUES (107504,'KINEMATICS OF MACHINE',4,012,117);

1 row created.

SQL> INSERT INTO Course VALUES (107505,'CONSTITUTIONAL OF INDIA',4,012,118);

1 row created.

SQL> INSERT INTO Course VALUES (110201,'CAPSTONE DESIGN PROJECT',4,013,119);

1 row created.

SQL> INSERT INTO Course VALUES (110202,'CONTROL SYSTEMS',4,013,120);

1 row created.

SQL> INSERT INTO Course VALUES (110203,'POWER ELECTRONICS',4,013,121);

1 row created.

SQL> INSERT INTO Course VALUES (110204,'ANALOG AND DIGITAL COMMUNICATION',4,013,111);

1 row created.

SQL>  INSERT INTO Course VALUES (110205,'POWER SYSTEM -I',4,013,112);

1 row created.

SQL> INSERT INTO Course VALUES (108701,'MECHANICAL ENGINEERING',4,014,122);

1 row created.

SQL> INSERT INTO Course VALUES (108702,'ENGINEERING GEOLOGY',4,014,123);

1 row created.

SQL> INSERT INTO Course VALUES (108703,'STRUCTURAL ANALYSIS',4,014,124);

1 row created.

SQL> INSERT INTO Course VALUES (108704,'MANAGEMENT',4,014,125);

1 row created.
SQL> INSERT INTO Course VALUES (107201,'MICROPROCESSOR',4,015,126);

1 row created.

SQL> INSERT INTO Course VALUES (107202,'DESIGN ANALYSIS OF ALGORITHM',4,014,127);

1 row created.

SQL> INSERT INTO Course VALUES (107203,'COMPILER DESIGN',4,014,128);

1 row created.

SQL> INSERT INTO Course VALUES (107204,'OPERATING SYSTEM',4,014,129);

1 row created.

SQL> INSERT INTO Course VALUES (107205,'SOFTWARE TRAINING',4,014,130);

1 row created.

SQL> INSERT INTO Course VALUES (109101,'ANALOG ELECTRONICS CIRCUIT',4,017,136);

1 row created.

SQL> INSERT INTO Course VALUES (109102,'DATA STRUCTURAL AND ALGORITHM',4,017,137);

1 row created.

SQL> INSERT INTO Course VALUES (109103,'OBJECT ORIENTED PROGRAMMING',4,017,138);

1 row created.

SQL> INSERT INTO Course VALUES (109104,'TECHNICAL WRITING',4,017,139);

1 row created.

SQL> INSERT INTO Course VALUES (109105,'MATHEMATICS',4,017,140);

1 row created.

SQL> SELECT* FROM Course;

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
    100301
MECHANICS OF MATERIALS
         3            11        106

    100302
HYDRAULIC ENGINEERING
         3            11        107

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------

    100303
TRANSPORTATION ENGINEERING
         3            11        108

    100304
GEOTECHNICAL ENGINEERING

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
         3            11        109

    100305
ENVIRONMENTAL SCIENCE
         3            11        110

    107501

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
HEAT TRANSFER
         4            12        114

    107502
FLUID MACHINERY
         4            12        115


 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
    107503
MANUFACTURING PROCESS
         4            12        116

    107504
KINEMATICS OF MACHINE
         4            12        117

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------

    107505
CONSTITUTIONAL OF INDIA
         4            12        118

    110201
CAPSTONE DESIGN PROJECT

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
         4            13        119

    110202
CONTROL SYSTEMS
         4            13        120

    110203

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
POWER ELECTRONICS
         4            13        121

    110204
ANALOG AND DIGITAL COMMUNICATION
         4            13        111


 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
    110205
POWER SYSTEM -I
         4            13        112

    108701
MECHANICAL ENGINEERING
         4            14        122

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------

    108702
ENGINEERING GEOLOGY
         4            14        123

    108703
STRUCTURAL ANALYSIS

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
         4            14        124

    108704
MANAGEMENT
         4            14        125

    107201

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
MICROPROCESSOR
         4            15        126

    107202
DESIGN ANALYSIS OF ALGORITHM
         4            14        127


 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
    107203
COMPILER DESIGN
         4            14        128

    107204
OPERATING SYSTEM
         4            14        129

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------

    107205
SOFTWARE TRAINING
         4            14        130

    109101
ANALOG ELECTRONICS CIRCUIT

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
         4            17        136

    109102
DATA STRUCTURAL AND ALGORITHM
         4            17        137

    109103

 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
OBJECT ORIENTED PROGRAMMING
         4            17        138

    109104
TECHNICAL WRITING
         4            17        139


 COURSE_ID
----------
COURSE_NAME
--------------------------------------------------------------------------------
   CREDITS DEPARTMENT_ID FACULTY_ID
---------- ------------- ----------
    109105
MATHEMATICS
         4            17        140


29 rows selected.

SQL> DESC Enrollment;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER(38)
 COURSE_ID                                 NOT NULL NUMBER(38)
 SEMESTER                                           VARCHAR2(20)
 GRADE                                              VARCHAR2(5)
SQL>INSERT INTO Enrollment VALUES(23105128001,105501,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128002,105501,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128003,105501,5,'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128004,105501,5,'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128005,105501,5,'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128011,100301,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128012,100302,5,'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128013,100303,5,'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128014,100304,5,'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128015,100305,5,'C');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128021,107501,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128022,107501,5,'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128023,107501,5,'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128024,107503,5,'C');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128031,110201,5,'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128032,110202,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128033,110203,5,'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128034,110204,5,'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128035,110205,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128041,108701,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128042,108701,5,'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128043,108702,5,'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128044,108703,5,'C');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128045,108704,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128051,107201,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128052,107202,5,'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128053,107203,5,'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128054,107204,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128055,107205,5,'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128061,109101,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128062,109102,5,'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128063,109103,5,'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128064,109104,5,'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23105128065,109105,5,'A');

1 row created.

SQL> SELECT *FROM Enrollment;

STUDENT_ID  COURSE_ID SEMESTER             GRADE
---------- ---------- -------------------- -----
2.3105E+10     105501 5                    A
2.3105E+10     105501 5                    A
2.3105E+10     105501 5                    A+
2.3105E+10     105501 5                    B+
2.3105E+10     105501 5                    B
2.3105E+10     100301 5                    A
2.3105E+10     100302 5                    A+
2.3105E+10     100303 5                    B
2.3105E+10     100304 5                    B+
2.3105E+10     100305 5                    C
2.3105E+10     107501 5                    A

STUDENT_ID  COURSE_ID SEMESTER             GRADE
---------- ---------- -------------------- -----
2.3105E+10     107501 5                    A+
2.3105E+10     107501 5                    B
2.3105E+10     107503 5                    C
2.3105E+10     110201 5                    A+
2.3105E+10     110202 5                    A
2.3105E+10     110203 5                    B
2.3105E+10     110204 5                    B+
2.3105E+10     110205 5                    A
2.3105E+10     108701 5                    A
2.3105E+10     108701 5                    A+
2.3105E+10     108702 5                    B

STUDENT_ID  COURSE_ID SEMESTER             GRADE
---------- ---------- -------------------- -----
2.3105E+10     108703 5                    C
2.3105E+10     108704 5                    A
2.3105E+10     107201 5                    A
2.3105E+10     107202 5                    A+
2.3105E+10     107203 5                    B
2.3105E+10     107204 5                    A
2.3105E+10     107205 5                    B+
2.3105E+10     109101 5                    A
2.3105E+10     109102 5                    A+
2.3105E+10     109103 5                    B
2.3105E+10     109104 5                    A

STUDENT_ID  COURSE_ID SEMESTER             GRADE
---------- ---------- -------------------- -----
2.3105E+10     109105 5                    A

34 rows selected.







