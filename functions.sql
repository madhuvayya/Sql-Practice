-- Mathematical functions

--  The RAND() function returns a random number from the <0, 1> interval.
SELECT RAND();

-- ABS() returns the absolute value, PI() gives the value of PI, SIN() computes the sine of an argument
SELECT ABS(-3), PI(), SIN(0.5);

-- binary, octal and hexadecimal representation of decimal 22
SELECT BIN(22), OCT(22), HEX(22);

--  CEIL() : rounds the value to the largest previous integer
-- FLOOR() : rounds the value to the smallest following integer
-- ROUND() : returns a number rounded to a specified number of decimal places.
SELECT CEIL(11.256), FLOOR(11.256), ROUND(11.256, 2);

-- SELECT POW(3, 3), SQRT(9);
SELECT POW(3, 3), SQRT(9);

-- SELECT DEGREES(2*PI());
SELECT DEGREES(2*PI());


-- Aggregate functions

-- MIN() : minimum , MAX() : Maximum , AVG() :  average
SELECT MIN(cost), MAX(cost), AVG(cost)
FROM cars;

-- SUM() : sum of all values, COUNT() : count the number of rows, 
-- we get the standard deviation and variance using the STD() and VARIANCE() functions
SELECT SUM(Cost), COUNT(Id), STD(Cost), VARIANCE(Cost) 
FROM Cars;

-- String functions

-- LENGTH() : returns the length of a string
-- UPPER() : converts characters into upper-case letters
-- LOWER() : converts characters into lower-case letters
SELECT LENGTH('ZetCode'), UPPER('ZetCode'), LOWER('ZetCode');


-- LPAD() and RPAD() functions to append and prepend characters to a specified string
SELECT LPAD(RPAD("ZetCode", 10, "*"), 13, "*");

-- REVERSE() : reverses the characters in a string
-- REPEAT() : repeats a string specified number of times
SELECT REVERSE('ZetCode'), REPEAT('*', 6);

-- LEFT() returns specified leftmost characters,
-- RIGHT() returns specified characters from the right
-- SUBSTRING() returns specified(three) characters from the specified(third) position of the string 
SELECT LEFT('ZetCode', 3), RIGHT('ZetCode', 3), SUBSTRING('ZetCode', 3, 3);


-- STRCMP() compares two strings and returns 0 if they are the same.
-- CONCAT() concatenates two strings.
SELECT STRCMP('byte', 'byte'), CONCAT('three', ' apples');


-- Date & time functions

SELECT DAYNAME('2011-01-23'), YEAR('2011/01/23'), MONTHNAME('110123');

SELECT NOW();

SELECT CURTIME(), CURDATE();

SELECT DATEDIFF('2011-3-12', '2011-1-12');

SELECT WEEKOFYEAR('110123'), WEEKDAY('110123'), QUARTER('110123');

SELECT DATE_FORMAT('110123', '%d-%m-%Y');


-- System functions


 SELECT VERSION(), DATABASE();
 
 SELECT USER();
 
 SELECT CHARSET('ZetCode'), COLLATION('ZetCode');
