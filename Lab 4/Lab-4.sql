USE CSE_B8_441




---LAB 4

---PART A

---1
ALTER TABLE DEPOSIT ADD CITY VARCHAR (20), PINCODE INT;
---2
ALTER TABLE DEPOSIT ALTER COLUMN NAME VARCHAR (35);
---3
ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT;
---4
EXEC SP_RENAME 'DEPOSIT.ACTINO','ANO';
---5
ALTER TABLE DEPOSIT DROP COLUMN CITY;
---6
EXEC SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL';

---PART B

CREATE TABLE EMPLOYEE_MASTER
(
EMPNO INT,
EMPNAME	VARCHAR(25),
JOININGDATE DATETIME,
CITY DECIMAL(8,2),
)
INSERT INTO EMPLOYEE_MASTER(EMPNO, EMPNAME, JOININGDATE, CITY)
VALUES
(101, 'Keyur', '5-1-02', 12000.00, 'Rajkot'),
(102, 'Hardik', '15-2-04', 14000.00, 'Ahmedabad'),
(103, 'Kajal', '14-3-06', 15000.00, 'Baroda'),
(104, 'Bhoomi', '23-6-05', 12500.00, 'Ahmedabad'),
(105, 'Harmit', '15-2-04', 14000.00, 'Rajkot'),
(106, 'Mitesh', '25-9-01', 5000.00, 'Jamnagar'),
(107, 'Meera', Null, 7000.00, 'Morbi'),
(108, 'Kishan', '6-2-03', 10000.00, NULL)




---PART B

---1
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE';
---2
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE;
---3
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CustomerName';


---DELETE, Truncate, Drop Operation

CREATE TABLE DEPOSIT_DETAIL
(
ANO INT,
CUSTOMERNAME VARCHAR(35),
BNAME VARCHAR(50),
AMOUNT INT,
PINCODE INT
)


---PART A


---1
DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT >= 4000;
---2
DELETE FROM DEPOSIT_DETAIL 
WHERE BNAME = 'CHANDI';
---3
DELETE FROM DEPOSIT_DETAIL 
WHERE ANO > 105;
---4
TRUNCATE TABLE DEPOSIT_DETAIL;
---5
DROP TABLE DEPOSIT_DETAIL;