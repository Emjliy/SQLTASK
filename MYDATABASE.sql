CREATE DATABASE MYDATABASE
USE MYDATABASE
CREATE TABLE POSITION(
ID INT PRIMARY KEY IDENTITY,
[NAME] NVARCHAR (50)
)
CREATE TABLE EMPLOYEE(
ID INT PRIMARY KEY IDENTITY,
POSITIONID INT REFERENCES POSITION(ID),
MKOD NVARCHAR (50) NOT NULL,
SAA NVARCHAR(50),
SALARY INT
)
CREATE TABLE BRANCHE(
ID INT PRIMARY KEY IDENTITY,
[NAME] NVARCHAR (50)
)
CREATE TABLE PRODUCT(
ID INT PRIMARY KEY IDENTITY,
[NAME] NVARCHAR (50),
PURCHASEPRICE INT,
SOLDPRICE INT
)
CREATE TABLE SALES(
ID INT PRIMARY KEY IDENTITY,
PRODUCTID INT REFERENCES PRODUCT(ID),
EMPLOYEEID INT REFERENCES EMPLOYEE(ID),
SALE INT,
SOLDDATE DATE
)
INSERT INTO POSITION VALUES('IPHONE SALER')
INSERT INTO POSITION VALUES('SAMSUNG SALER')
INSERT INTO POSITION VALUES('REDMI SALER')
INSERT INTO POSITION VALUES('NOKIA SALER')
SELECT*FROM POSITION

INSERT INTO EMPLOYEE VALUES(1,'11A','EMILY',1000)
INSERT INTO EMPLOYEE VALUES(2,'11B','GULCHIN',900)
INSERT INTO EMPLOYEE VALUES(3,'11C','ALI',850)
INSERT INTO EMPLOYEE VALUES(4,'11D','FIFO',600)
SELECT*FROM EMPLOYEE

INSERT INTO BRANCHE VALUES('NARIMANOV')
INSERT INTO BRANCHE VALUES('28MAY')
INSERT INTO BRANCHE VALUES('GANCLIK')
INSERT INTO BRANCHE VALUES('XATAI')
SELECT*FROM BRANCHE

INSERT INTO PRODUCT VALUES('IPHONE',800,970)
INSERT INTO PRODUCT VALUES('SAMSUNG',500,550)
INSERT INTO PRODUCT VALUES('REDMI',300,400)
INSERT INTO PRODUCT VALUES('NOKIA',200,250)
SELECT*FROM PRODUCT

INSERT INTO SALES VALUES(1,1,15,'2022/04/21')
INSERT INTO SALES VALUES(2,2,10,'2022/04/20')
INSERT INTO SALES VALUES(3,3,5,'2020/03/21')
INSERT INTO SALES VALUES(4,4,5,'2021/08/11')
SELECT*FROM SALES


SELECT COUNT(EMPLOYEE.ID) FROM EMPLOYEE


SELECT*FROM EMPLOYEE
ORDER BY SALARY DESC


SELECT*FROM PRODUCT
ORDER BY SOLDPRICE DESC

SELECT*FROM SALES
ORDER BY SOLDDATE 


SELECT EMPLOYEE.SAA,POSITION.NAME FROM EMPLOYEE
JOIN POSITION ON
POSITION.ID =EMPLOYEE.POSITIONID 











