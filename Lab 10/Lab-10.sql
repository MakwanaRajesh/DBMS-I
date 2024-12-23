USE CSE_B8_441

---LAB 10


CREATE TABLE STUDENT_INFO(
	RNO INT,
	SNAME VARCHAR(50),
	BNAME VARCHAR(50),
	SPI DECIMAL(3,2),
	BKLOG INT
)

INSERT INTO STUDENT_INFO(RNO,SNAME,BNAME,SPI,BKLOG)
VALUES
(101,'RAJU','CE',8.80,0),
(102,'AMIT','CE',2.20,3),
(103,'SANJAY','ME',1.50,6),
(104,'NEHA','EC',7.65,1),
(105,'MEERA','EE',5.52,2),
(106,'MAHESH','EC',4.50,3)

--> Part � A: 


--> Views (First create a view then display all views) 


--1. Create a view Personal with all columns. 
CREATE VIEW PERSONAL AS 
SELECT * 
FROM STUDENT_INFO 

--2. Create a view Student_Details having columns Name, Branch & SPI.  
CREATE VIEW STUDENT_DETAILS AS 
SELECT SNAME , BNAME , SPI 
FROM STUDENT_INFO

--3. Create a view AcademicData having columns RNo, Name, Branch. 
CREATE VIEW ACADEMICDATA AS
SELECT RNO , SNAME, BNAME 
FROM STUDENT_INFO

--4. Create a view Student_ bklog having all columns but students 
--whose bklog more than 2. 
CREATE VIEW STUDENT_BKLOG AS
SELECT * 
FROM STUDENT_INFO 
WHERE BKLOG > 2

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters. 
CREATE VIEW STUDENT_PATTERN AS 
SELECT RNO,SNAME,BNAME 
FROM STUDENT_INFO
WHERE SNAME LIKE '____'

--6. Insert a new record to AcademicData view. (107, Meet, ME) 
INSERT INTO ACADEMICDATA 
VALUES 
(107,'MEET','ME')

--7. Update the branch of Amit from CE to ME in Student_Details view. 
UPDATE STUDENT_DETAILS 
SET BNAME = 'ME'
WHERE SNAME = 'AMIT'

--8. Delete a student whose roll number is 104 from AcademicData view. 
DELETE 
FROM ACADEMICDATA
WHERE RNO = 104


--> Part � B


--1. Create a view that displays information of all students whose SPI is above 8.5 
CREATE VIEW STUD_INFO AS
SELECT * 
FROM STUDENT_INFO
WHERE SPI > 8.5

--2. Create a view that displays 0 backlog students. 
CREATE VIEW STUD_DISPLAY AS
SELECT * 
FROM STUDENT_INFO 
WHERE BKLOG = 0

--3. Create a view Computerview that displays CE branch data only. 
CREATE VIEW COMPUTERVIEW AS
SELECT * 
FROM STUDENT_INFO
WHERE BNAME = 'CE'


--> Part � C: 


--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC. 
CREATE VIEW RESULT_EC AS
SELECT SNAME,SPI
FROM STUDENT_INFO
WHERE BNAME = 'EC' AND SPI < 5

--2. Update the result of student MAHESH to 4.90 in Result_EC view. 
UPDATE RESULT_EC 
SET SPI = 4.90
WHERE SNAME = 'MAHESH'

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in swhich name starts with �M� and having bklogs more than 5. 
CREATE VIEW STU_BKLOG AS
SELECT RNO,SNAME,BKLOG
FROM STUDENT_INFO
WHERE SNAME LIKE 'M%' AND BKLOG > 5

--4. Drop Computerview from the database.
DROP VIEW COMPUTERVIEW 