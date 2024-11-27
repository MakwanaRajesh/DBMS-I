USE CSE_B8_441


---LAB 9



CREATE TABLE STUDENT_DATA(
	RNO INT,
	SNAME VARCHAR(50),
	CITY VARCHAR(50),
	D_ID INT
)

INSERT INTO STUDENT_DATA(RNO,SNAME,CITY,D_ID)
VALUES
(101,'RAJU','RAJKOT',10),
(102,'AMIT','AHMEDABAD	',20),
(103,'SANJAY','BARODA',40),
(104,'NEHA','RAJKOT',20),
(105,'MEERA','AHMEDABAD',30),
(106,'MAHESH','BARODA',10)

CREATE TABLE ACADEMIC(
	RNO INT,
	SPI DECIMAL(2,1),
	BKLOG INT
)

INSERT INTO ACADEMIC(RNO,SPI,BKLOG)
VALUES
(101,8.8,0),
(102,9.2,2),
(103,7.6,1),
(104,8.2,4),
(105,7.0,2),
(106,8.9,3)

CREATE TABLE DEPARTMENT(
	D_ID INT,
	DNAME VARCHAR(50)
)

INSERT INTO DEPARTMENT(D_ID,DNAME)
VALUES
(10,'COMPUTER'),
(20,'ELECTRICAL'),
(30,'MECHANICAL'),
(40,'CIVIL')



--> Part – A:


--1. Display details of students who are from computer department. 
SELECT * FROM STUDENT_DATA WHERE D_ID = 
(SELECT D_ID FROM DEPARTMENT WHERE DNAME = 'COMPUTER')

--2. Displays name of students whose SPI is more than 8. 
SELECT SNAME FROM STUDENT_DATA WHERE RNO =
(SELECT RNO FROM ACADEMIC WHERE SPI > 8)

--3. Display details of students of computer department who 
--belongs to Rajkot city. 
SELECT * FROM STUDENT_DATA WHERE CITY = 'RAJKOT' AND D_ID =
(SELECT D_ID FROM DEPARTMENT WHERE DNAME = 'COMPUTER')

--4. Find total number of students of electrical department. 
SELECT COUNT(RNO) FROM STUDENT_DATA WHERE D_ID =
(SELECT D_ID FROM DEPARTMENT WHERE DNAME = 'ELECTRICAL')

--5. Display name of student who is having maximum SPI. 

--6. Display details of students having more than 1 backlog. 
SELECT * FROM STUDENT_DATA WHERE RNO =
(SELECT RNO FROM ACADEMIC WHERE BKLOG > 1 )

--> Part – B: 


--1. Create a view that displays information of all students whose SPI is above 8.5

CREATE VIEW VW_INFO_STUDENT AS SELECT * FROM STUDENT_INFO WHERE SPI >8.5
SELECT * FROM VW_INFO_STUDENT

--2. Create a view that displays 0 backlog students.

CREATE VIEW VW_BKLOGIS0 AS SELECT * FROM STUDENT_INFO WHERE BKLOG = 0
SELECT * FROM VW_BKLOGIS0

--3. Create a view Computerview that displays CE branch data only

CREATE VIEW VW_BRANCH_CE AS SELECT * FROM STUDENT_INFO WHERE BRANCH ='CE'
SELECT * FROM VW_BRANCH_CE