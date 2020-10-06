-- A simple procedure
CREATE PROCEDURE AllCars() 
SELECT * FROM cars;

-- calling the procedure
CALL AllCars();

-- Simple function

-- this function computes the area
-- of a circle; it takes a radius as
-- a parameter

DELIMITER $$
DROP FUNCTION IF EXISTS CircleArea;
CREATE FUNCTION CircleArea(r DOUBLE) 
RETURNS DOUBLE
DETERMINISTIC
BEGIN
    DECLARE area DOUBLE;

    SET area = r * r * pi();
    RETURN area;
END $$
DELIMITER ;

-- calling the function CircleArea()
SELECT CircleArea(5.5);