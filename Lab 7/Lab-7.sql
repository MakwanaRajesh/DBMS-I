USE CSE_B8_441




---LAB 7

CREATE TABLE EMP
(
EID INT,
ENAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY INT,
JOININGDATE DATETIME,
CITY VARCHAR(50)
)

INSERT INTO EMP(EID, ENAME, DEPARTMENT, SALARY, JOININGDATE, CITY)
VALUES
(101, 'Rahul', 'Admin', 56000, '1-Jan-90', 'Rajkot'),
(102, 'Hardi', 'IT', 18000, '25-Sep-90', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '14-May-91', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '8-Feb-91', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '23-Jul-90', 'Jamnagar'),
(106, 'Priya', 'IT', 9000, '18-Oct-90', 'Ahmedabad'),
(107, 'Bhoomi', 'HR', 34000, '25-Dec-91', 'Rajkot')


SELECT * FROM EMP

---PART A

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM FROM EMP
SELECT MIN(SALARY) AS MAXIMUM FROM EMP
--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,--respectively.
SELECT SUM(SALARY) AS TOTAL_SAL,
AVG(SALARY) AS AVERAGE_SALARY EMP
--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(ENAME) AS COUNTNO FROM EMP

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS MAXRAJKOT FROM EMP 
WHERE CITY = 'RAJKOT'
--5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS MAXIT FROM EMP DEPARTMENT = 'IT'

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EID) FROM EMP WHERE JOININGDATE > '8-FEB-91'

--7. Display average salary of Admin department.
SELECT AVG(SALARY) FROM EMP 
WHERE DEPARTMENT = 'ADMIN'
--8. Display total salary of HR department.
SELECT SUM(SALARY) FROM EMP 
WHERE DEPARTMENT > 'HR'
--9. Count total number of cities of employee without duplication.
SELECT DISTINCT  COUNT(CITY) FROM EMP

--10. Count unique departments.
SELECT DISTINCT COUNT (DEPARTMENT) FROM EMP

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) FROM EMP 
WHERE CITY = 'AHEMDABAD'
--12. Find city wise highest salary.
SELECT CITY MAX(SALARY) AS HIGH_SALARY
FROM 
--13. Find department wise lowest salary.
SELECT DEPARTMENT, MIN(SALARY) AS DEPARTMENTWISE
FROM EMP GROUP BY DEPARTMENT
--14. Display city with the total number of employees belonging to each city.
SELECT CITY, COUNT(SALARY) FROM EMP 
GROUP BY CITY
--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT, COUNT(SALARY) FROM EMP  
GROUP BY DEPARTMENT 
--16. Give average salary of each department of EMP table without displaying the respective department name.
SELECT AVG(SALARY) FROM EMP 
GROUP BY DEPARTMENT




--- PART - B :

--1. Count the number of employees living in Rajkot.
SELECT COUNT(EID) FROM EMP WHERE CITY = 'RAJKOT'

--2. Display the difference between the highest and lowest salaries. 
--Label the column DIFFERENCE. 
SELECT DEPART,(MAX(SALARY) - MIN(SALARY)) FROM EMP GROUP BY DEPART

--3. Display the total number of employees hired before 
--1st January, 1991.
SELECT COUNT(EID) FROM EMP WHERE JDATE < '1-JAN-91'

--> PART - C

--1. Count the number of employees living in Rajkot or Baroda. 
SELECT COUNT(EID) FROM EMP WHERE CITY IN ('RAJKOT','BARODA')

--2. Display the total number of employees hired 
--before 1st January, 1991 in IT department. 
SELECT COUNT(EID) FROM EMP WHERE JDATE < '1-JAN-91' AND DEPART = 'IT'

--3. Find the Joining Date wise Total Salaries. 
SELECT SUM(SALARY) FROM EMP GROUP BY JDATE

--4. Find the Maximum salary department & city wise in which 
--city name starts with �R�.
SELECT MAX(SALARY) FROM EMP WHERE CITY LIKE 'R%' GROUP BY DEPART , CITY