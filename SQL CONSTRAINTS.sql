USE CODEGNAN;

CREATE TABLE EMP1(ID INT primary KEY, NAME VARCHAR(100), MOBILE bigint, ADDRESS VARCHAR(25) DEFAULT "HYDERABAD");

desc EMP1;

INSERT INTO EMP1(ID, NAME, MOBILE, ADDRESS) VALUES(01,"FATHU", 5678, "VIJAYAWADA");
INSERT INTO EMP1(ID,NAME, MOBILE) VALUES(02,"FATHU", 5678);

 
SELECT * FROM EMP1;

CREATE table EMP12(ID INT primary KEY auto_increment,
EMP_NAME varchar(100) NOT NULL default "NAME",
MOBILE bigint unique,
ADDRESS VARCHAR(100) DEFAULT "HYD"
);

SELECT * FROM EMP12;
INSERT INTO EMP12(EMP_NAME, MOBILE, ADDRESS) VALUES("MUBIN",4567,"BANGLORE");
INSERT INTO EMP12( MOBILE) VALUES(9494619140);

CREATE table EMP13(ID INT primary KEY auto_increment,
EMP_NAME varchar(100) NOT NULL,
AGE INT NOT NULL,
SALARY INT NOT NULL,
MOBILE bigint,
CHECK((AGE>=18) AND (SALARY>=10000))
);

SELECT * FROM EMP13;


INSERT INTO EMP13(EMP_NAME, AGE, SALARY, MOBILE) VALUES("PATTAN", 15, 15000, 3456789345);
INSERT INTO EMP13(EMP_NAME, AGE, SALARY, MOBILE) VALUES("PEOPLE", 25, 15000, 3456789345);
INSERT INTO EMP13(EMP_NAME, AGE, SALARY, MOBILE) VALUES("PEOPLE1", 45, 45000, 3456789345);


