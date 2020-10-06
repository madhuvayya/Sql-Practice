-- A simple procedure
CREATE PROCEDURE AllCars() 
SELECT * FROM cars;

-- calling the procedure
CALL AllCars();