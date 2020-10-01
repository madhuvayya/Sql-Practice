-- Show engines
SHOW ENGINES;

-- Shows all databases
SHOW DATABASES;

-- Create database. Here database name is mydb 
CREATE DATABASE mydb; 

-- Delete database. Delete's mydb 
DROP DATABASE mydb; 

-- Select a database to use. Select's mydb 
USE mydb; 

-- Shows all tables in selected database
SHOW TABLES;

-- Create table 
CREATE TABLE cars (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    cost DECIMAL
);

-- To see the table structure 
DESCRIBE cars;

-- To find sql query created table
SHOW CREATE TABLE cars;

-- Insert values into a table
INSERT INTO cars (id,name,cost) 
VALUES (1,'Audi', 52642);  

-- Insert all values into a table
INSERT INTO cars 
VALUES(2,'Mercedes', 57127);

-- Insert values according to specified columns
INSERT INTO cars(name,cost) 
VALUES('Skoda', 9000);

-- Insert multiple records
INSERT INTO cars 
VALUES(4,'Volvo', 29000),
      (5,'Bentley', 350000),
	  (6,'Citroen', 21000),
      (7,'Hummer', 41400),
      (8,'Volkswagen', 21600);
      
-- To display all records of a table
SELECT * FROM cars; 

-- To display all records of a table with specified colmns 
SELECT name, cost FROM cars;          

-- WHERE clause to display specific record from a table
SELECT * 
FROM cars
WHERE id = 3;

SELECT * 
FROM cars 
WHERE name = 'Volvo';

SELECT * 
FROM cars
WHERE cost = 9000;

SELECT * 
FROM cars
WHERE cost > 50000;

-- BETWEEN , AND
SELECT name, cost 
FROM cars
WHERE cost BETWEEN 10000 AND 30000;

-- LIKE clause
SELECT name 
FROM cars 
WHERE name LIKE 'VO%';

SELECT name 
FROM cars 
WHERE name LIKE '%es';

SELECT name 
FROM cars 
WHERE name LIKE '%ce%';

-- IN 
SELECT name, cost
FROM cars 
WHERE id IN (2, 4, 5, 7);
      
-- Limiting the data output(In the below query the output will consists of 5 records) 
SELECT id, name, cost FROM cars LIMIT 5;       

-- Limiting the data output and start from a specified record
-- In the below query the output will consists of 4 records from record 4
-- 3 is offset  
SELECT id, name, cost FROM cars LIMIT 3, 4;

-- COUNT() function
SELECT COUNT(id) AS 'Number of models' FROM cars;

--  MAX() function
SELECT id AS Car_id, name AS Car_name , cost AS Car_cost
FROM cars                                            
WHERE cost = (SELECT Max(cost) FROM cars);

-- MIN() function
SELECT id AS ID, name AS NAME, cost AS Cost
FROM cars
WHERE cost = (SELECT MIN(cost) FROM cars); 

-- ORDER BY
SELECT name, cost 
FROM cars
ORDER BY cost DESC LIMIT 10;

SELECT name, cost 
FROM cars
ORDER BY name DESC LIMIT 10;

SELECT name, cost 
FROM cars
ORDER BY cost ASC LIMIT 10;

-- GROUP BY
SELECT District, SUM(Population) 
FROM world.city
WHERE District = 'New York' 
GROUP BY District;

SELECT District, SUM(Population) 
FROM world.city
WHERE CountryCode = 'USA' 
GROUP BY District
HAVING SUM(Population) > 3000000;

-- Updating a record
UPDATE cars 
SET cost = 10000
WHERE cost = 9000;

-- Creating a table and storing values
CREATE TABLE costly_cars
SELECT * FROM cars
WHERE cost > 50000;