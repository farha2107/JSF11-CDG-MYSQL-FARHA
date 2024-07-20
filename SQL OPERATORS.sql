USE CODEGNAN;
DROP TABLE CUSTOMERS;
CREATE TABLE CUSTOMERS(
ID INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(100),
AGE INT,
STATUS VARCHAR(50)
);

INSERT INTO CUSTOMERS(NAME,AGE,STATUS) VALUES ("FARHA",21,"MAJOR"),("FIRDOSE",22,"MINOR"),("PATTAN",25,"MAJOR");

SELECT * FROM CUSTOMERS;

INSERT INTO CUSTOMERS(NAME,AGE) VALUES ("FARHA1",25),("FARHA2",27),("FARHA3",26),("FARHA4",20);

SELECT * FROM CUSTOMERS;

SELECT NAME,(ID+AGE) AS NEW_DATA FROM CUSTOMERS;

SELECT NAME,ID,AGE,(AGE-ID) AS NEW_DATA FROM CUSTOMERS;

SELECT NAME,ID,AGE,(ID*10) AS NEW_DATA FROM CUSTOMERS;

SELECT NAME,ID,AGE,(AGE/2) AS NEW_DATA FROM CUSTOMERS;

SELECT NAME,ID,AGE,(AGE%2) AS NEW_DATA FROM CUSTOMERS;