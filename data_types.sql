
-----------------------------------------------------------------
--          Numeric(default SIGNED) Data types
-----------------------------------------------------------------
-----------------------------------------------------------------------
-- Data type		Bytes	Minimum value			Maximum value
-----------------------------------------------------------------------
-- TINYINT			1		-128					127
-- SMALLINT			2		-32768					32767
-- MEDIUMINT		3		-8388608				8388607
-- INTEGER			4		-2147483648				2147483647
-- BIGINT			8		-9223372036854775808	9223372036854775807
-------------------------------------------------------------------------

-- creating age table(TINYINT-1 BYTE, SMALLINT-2 BYTES) 
CREATE TABLE ages (
	id SMALLINT,
    age TINYINT
);

-- INSERTING INTO ages table
INSERT INTO ages(id,age)
VALUES(1,50);

-- UNSIGNED numeric data types
-----------------------------------------------------------------
-- Data type	Bytes	Minimum value	Maximum value
-----------------------------------------------------------------
-- TINYINT		1			0			255
-- SMALLINT		2			0			65535
-- MEDIUMINT	3			0			16777215
-- INTEGER		4			0			4294967295
-- BIGINT		8			0			18446744073709551615 
-----------------------------------------------------------------

-- ALTER the table (UNSIGNED will remove negative range of number data type so it stores max range)
ALTER TABLE ages
MODIFY age TINYINT UNSIGNED;   

-- INSERTING INTO ages table
INSERT INTO ages(id,age)
VALUES(1,128);

-----------------------------------------------------------------
-- 				Floating Point Values
-----------------------------------------------------------------

-- Create table numbers
CREATE TABLE numbers (
	id TINYINT,
	floats FLOAT,
    decimals DECIMAL(3,2)
);

-- DECIMAL type takes upto specified precision
INSERT INTO numbers 
VALUES	(1,1.1,1.1),
		(2,1.1,1.1),
        (2,1.1,1.1);

-- sum of float values and decimals differece
SELECT SUM(floats), SUM(decimals)
FROM numbers; 

-------------------------------------------------------------------------------------------
-- MySQL data types for storing dates and times: DATE, TIME, DATETIME, YEAR, and TIMESTAMP
-------------------------------------------------------------------------------------------

-- current date 
SELECT CURDATE();

-- DATE()
SELECT DATE('2019-05-09 12:01:00');

-- ADDDATE()
SELECT ADDDATE('2020-05-06',8); 

-- CREATE dates TABLE
CREATE TABLE dates (
	id TINYINT,
    dates DATE
);

-- we can also store dates in following formates
INSERT INTO dates
VALUES 	(1,'2019-05-23'),
		(2,'20171106'),
        (3,'2015/05/5'),
        (4,'110206'),
        (5,'2009+03+22');

-- Currrent time        
SELECT CURTIME(); 

-- timediff()
SELECT TIMEDIFF('23:34:32', '22:00:00');       

-- TIME()
SELECT TIME('2017-01-31 11:06:43');

-- NOW()
SELECT NOW();

-- DAYNAME() 
SELECT DAYNAME('2017-01-31 11-12-12');

-- YEAR()
SELECT YEAR(CURDATE()) AS 'Current year';

-- create table prices
CREATE TABLE prices (
	id TINYINT PRIMARY KEY,
    price DECIMAL(4,2),
    stamp TIMESTAMP
); 

INSERT INTO prices(id,price)
VALUES (1,56.32);

INSERT INTO prices(id,price)
VALUES (2,55.3);

INSERT INTO prices(id,price)
VALUES (3,5.56);

-- Altered table to store the timestamp by default 
ALTER TABLE PRICES
MODIFY STAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

INSERT INTO prices(id,price)
VALUES (4,66);