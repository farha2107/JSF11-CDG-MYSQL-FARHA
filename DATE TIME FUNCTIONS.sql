USE CODEGNAN;

-- DATE FUNCTIONS
CREATE TABLE EMP10(
    ID INT,
    DATEE DATE 
);
SELECT * FROM EMP10;
INSERT INTO EMP10 VALUES(101, "2024-08-24");
SELECT * FROM EMP10;

SELECT curdate();
SELECT current_date();

SELECT date_add("2024-01-01",INTERVAL 3 MONTH);
SELECT date_add("2024-01-01",INTERVAL 3 DAY);
SELECT date_add("2024-01-01",INTERVAL 3 YEAR);

SELECT datediff("2024-02-01","2024-01-01");

-- TIME
CREATE TABLE EMP11(
 ID INT,
 TIMEE time
 );
 SELECT * FROM EMP11;
 
 INSERT INTO EMP11 VALUES(1,"03:03:03");
  INSERT INTO EMP11 VALUES(1,"25:03:03");
  
SELECT CURTIME();
SELECT addtime("10:10:10","01:01:01");
SELECT subdate("10:10:10","01:01:01");
SELECT TIMEDIFF("11:10:10","10:10:10");
SELECT time_to_sec("00:01:10");
-- TIME STAMP 

SELECT CURRENT_TIMESTAMP;
SELECT TIMESTAMPDIFF(YEAR,"2024-01-01 10:10:10","2024-02-01 10:10:10");


CREATE TABLE EMP121(
	ID INT,
    TS TIMESTAMP
);
INSERT INTO EMP121 VALUES (1,"2024-01-01 10:10:10");
SELECT * FROM EMP121;
INSERT INTO EMP121 (ID)  VALUES (2);

CREATE TABLE EMP131(
	ID INT,
    TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO EMP131 VALUES (1,"2024-01-01 10:10:10");
SELECT * FROM EMP131;
INSERT INTO EMP131 (ID) VALUES (2);
SET SQL_SAFE_UPDATES = 0;
UPDATE EMP131 SET ID=4;

CREATE TABLE EMP14(
	ID INT,
    TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO EMP14 VALUES (1,"2024-01-01 10:10:10");
SELECT * FROM EMP14;
INSERT INTO EMP14 (ID) VALUES (2);
UPDATE EMP14 SET ID=4;







