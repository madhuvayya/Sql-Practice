----------------- Literals

-- Below query consists of five literals integer, string, floating point, hexa decimal, and a binary  
SELECT 3, 'Wolf', 34.5, 0x34, 0+b'10111';

-- NULL means absence of a value
SELECT NULL; 

-- BOOLEAN values
SELECT TRUE, FALSE;

-- Variables 
SET @abc = 'xyz';

SELECT @abc;

------------------------------ Operators ------------------------------

-- Unary Operators
SELECT +3, 3, -3, -(3-44);

-- NOT negates a value. 3>9 gives false but NOT makes it as true
SELECT NOT (3>9); 

-------------------- Arithmetic operators--------------------------
------------ (multiplication, division, integer division, addition, subtraction, and modulo)
SELECT 3 + 4 - 5;

SELECT 3*3/9;

SELECT 9/2, 9 DIV 2;

--  % operator is called the modulo operator which gives reminder.
SELECT 11 % 3;

------------------ Logical operators -----------------------------
---------------- (AND, OR and NOT and XOR) ---------------------

SELECT FALSE AND FALSE, FALSE AND TRUE, TRUE AND FALSE, TRUE AND TRUE;

SELECT 3=3 AND 4=4;

-- OR operator
SELECT FALSE OR FALSE, FALSE OR TRUE, TRUE OR FALSE, TRUE OR TRUE;

-- XOR Operator
SELECT FALSE XOR FALSE, FALSE XOR TRUE, TRUE XOR FALSE, TRUE XOR TRUE;

-- NOT Operator
SELECT NOT TRUE, NOT FALSE;

---------------------- Relational operators ---------------------------
--------- (Relational operators are used to compare values) -----------

SELECT 3*3=9, 9=9;

SELECT 3 < 4, 3 <> 5, 4 <= 4, 5 != 5;

----------- Bitwise operators --------------------

SELECT 6 & 3, 3 & 6;

SELECT 6 | 3, 3 | 6;

SELECT 6 >> 1;

SELECT 6 << 1;

------------------------- Other Operators -----------------------
------------- ( IS, IN, LIKE, REGEXP, BETWEEN ) ------------------

SET @running = FALSE;
SELECT @running IS FALSE;

SELECT 'Tom' IN ('Tom', 'Frank', 'Jane');

SELECT * FROM Cars Where name IN ('Audi', 'Hummer');

-- cars, whose names begin with 'Vol'.
SELECT * FROM Cars WHERE name LIKE 'Vol%';

-- car name that has exactly four characters
SELECT * FROM Cars WHERE name LIKE '____';

-- whose last but one character is 'e'.
SELECT * FROM Cars WHERE name REGEXP 'e.$';

--  cars, whose second and last but one characters is 'e'.
SELECT * FROM Cars WHERE name REGEXP '^.e.*e.$';