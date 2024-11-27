 ---LAB 2

 --PART-A

---1
 SELECT * FROM DEPOSIT;
---2
 SELECT * FROM BORROW;
 ---3
 SELECT * FROM CUSTOMERS
 ---4
 SELECT ACTINO,CNAME, AMOUNT FROM DEPOSIT
 ---5
 SELECT LOANNO, AMOUNT FROM BORROW 
 ---6
 SELECT *FROM BORROW WHERE BNAME = 'ANDHERI'
 ---7
 SELECT ACTINO, AMOUNT FROM DEPOSIT WHERE ACTINO != 106
 ---8
 SELECT CNAME FROM DEPOSIT WHERE AMOUNT >5000
 ---9
 SELECT CNAME FROM DEPOSIT WHERE ADATE>'1-DEC-1996'
--10
SELECT CNAME FROM DEPOSIT WHERE ACTINO<105
--11
SELECT CNAME FROM CUSTOMERS WHERE CITY='NAGPUR' OR CITY='DELHI'
---OR
SELECT CNAME FROM CUSTOMERS WHERE CITY IN ('NAGPUR','DELHI')
--12
SELECT BNAME,CNAME FROM DEPOSIT WHERE AMOUNT>4000 AND ACTINO<150
--13
SELECT CNAME FROM BORROW WHERE AMOUNT>=3000 AND AMOUNT<=8000
---OR
SELECT CNAME FROM BORROW WHERE AMOUNT BETWEEN 3000 AND 8000
--14
SELECT * FROM DEPOSIT WHERE BNAME != 'ANDHERI'
---OR
SELECT * FROM DEPOSIT WHERE BNAME <> 'ANDHERI'
--15
SELECT ACTINO,CNAME,AMOUNT FROM DEPOSIT WHERE (BNAME = 'AJNI' OR BNAME='KAROLBAGH' OR BNAME='M.G.ROAD') AND ACTINO<104
---OR
SELECT ACTINO,CNAME,AMOUNT FROM DEPOSIT WHERE (BNAME IN ('AJNI','KAROLBAGH','M.G.ROAD')) AND ACTINO<104


--PART-B

--1
SELECT TOP 5 * FROM DEPOSIT
--2
SELECT TOP 3 * FROM DEPOSIT WHERE AMOUNT>1000
--3
SELECT TOP 5 LOANNO,CNAME FROM BORROW WHERE BNAME!='ANDHERI'
--4
SELECT DISTINCT CITY FROM CUSTOMERS
--5
SELECT DISTINCT BNAME FROM BRANCH


--PART-C
--1
SELECT TOP 50 PERCENT * FROM BORROW
--2
SELECT TOP 10 PERCENT AMOUNT FROM DEPOSIT
--3
SELECT TOP 25 PERCENT * FROM DEPOSIT WHERE AMOUNT>5000
--4
SELECT TOP 10 PERCENT AMOUNT FROM BORROW
--5
SELECT DISTINCT CNAME,CITY FROM CUSTOMERS
--6
SELECT *,(AMOUNT*1.1) AS 'EXTRA AMOUNT' FROM BORROW
--7
SELECT * FROM BORROW WHERE LOANNO%2=0
---OR
SELECT * FROM BORROW WHERE LOANNO%2=1