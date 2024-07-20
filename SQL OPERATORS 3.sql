USE CODEGNAN;

CREATE TABLE EMP5(ID INT,EMPNAME VARCHAR(50),CITY VARCHAR(20));

INSERT INTO EMP5 VALUES(1,"FARHA FIRDOSE","LONDON"),(2,"FARRU FIRDOSE","LONDEN"),(3,"HUSNA","INDIA"),(4,"HUSIA","INDIA");

SELECT * FROM EMP5;

-- CONCAT
SELECT CONCAT("FARHA"," " ,"FIRDOSE") AS FULL_NAME;
SELECT concat(EMPNAME,"PLACE IS",CITY)AS DETAILS FROM EMP5;

-- CONCAT_WS
SELECT (CONCAT_WS(" , ","FARHA","FIRDOSE","AFRA","FARHAN")) AS NAMESS;
SELECT CONCAT_WS(",",EMPNAME,CITY) AS SETAILS FROM EMP5;

-- LOWER AND UPPER
SELECT UPPER("Hello") as capital;
SELECT LOWER("hello") AS LOWER;

SELECT EMPNAME,UPPER(EMPNAME) AS CAPITAL, CITY, LOWER(CITY) AS SMALL FROM EMP5;

-- LENGTH

SELECT LENGTH("Hello") as LENGTH;
SELECT char_length("Hrllo") as CHAR_LENGTH;

SELECT ID,LENGTH(EMPNAME) AS NAME_LENGTH, CHAR_LENGTH(EMPNAME) AS NAMECHARLENGTH FROM EMP5;

-- SUBSTRING
SELECT SUBSTRING("FIRDOSE",6);
SELECT SUBSTRING("FIRDOSE",2,6);

SELECT EMPNAME,SUBSTRING(EMPNAME,2,5) AS SUBSTRR FROM EMP5;

-- REVERSE
SELECT REVERSE("FARHA") AS REV;

SELECT ID,EMPNAME,REVERSE(EMPNAME) AS REVNAME FROM EMP5;

-- REPLACE
SELECT REPLACE("FARHA FIRDOSE","FARHA","P") AS REPLACED_STRING;

SELECT ID,EMPNAME,REPLACE(EMPNAME,"FARHA","P") AS REPLACED_STRING;

-- LIKE
SELECT "FARHA FIRDOSE" LIKE "%FIRDOSE" AS XYZ;

SELECT "FARHA FIRDOSE" LIKE "FARH_ FIRDOSE" AS ABC;

SELECT * FROM EMP5 WHERE CITY LIKE "%IA" ; -- SELECT * FROM EMP5 WHERE CITY LIKE "IA%"; -- THE COULUMN WILL BE NULL;
SELECT * FROM EMP5 WHERE CITY LIKE "LOND_N";
