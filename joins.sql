create table customers (
	customer_id int primary key,
    name varchar(50)
);

create table reservations (
	id int primary key,
    customer_id int,
    day date,
    foreign key (customer_id) references customers(customer_id) 
);

INSERT INTO `mydb`.`customers`
VALUES 	(1,'Paul Novak'),
		(2,'Terry Neils'),
        (3,'Jack Fonda'),
        (4,'Tom Willis');

INSERT INTO `mydb`.`reservations`
VALUES (1,1 ,'2009-11-22'),
		(2,2 ,'2009-11-28'),
        (3,2 ,'2009-11-29'),
        (4,1 ,'2009-11-29'),
        (5,3 ,'2009-12-02');
-- INNER JOIN
SELECT name, day 
FROM customers AS c 
JOIN reservations AS r
ON c.customer_id = r.customer_id;

-- below query is equivalent to above
SELECT name, day 
FROM customers, reservations
WHERE customers.customer_id = reservations.customer_id;

-- Cross innner join (CROSS INNER JOIN combines all records from one table with all records from another table)
SELECT name, day 
FROM customers 
CROSS JOIN reservations;

-- outer joins

-- LEFT OUTER JOIN (returns all the values from the left table, plus matched values from the right table)
SELECT name, day 
FROM customers 
LEFT JOIN reservations
ON customers.customer_id =reservations.customer_id; 


-- RIGHT OUTER JOIN (NATURAL INNER JOIN) :gives all the records match in both tables and all possibilities of the right table
SELECT name, day 
FROM customers 
RIGHT JOIN reservations 
USING (customer_id);

-- NATURAL INNER JOIN (The NATURAL INNER JOIN automatically uses all the matching column names for the join)
SELECT name, day 
FROM customers 
NATURAL JOIN reservations;

-- NATURAL LEFT OUTER JOIN : gives all the matching records from the tables and all other records on the left table
SELECT name, day 
FROM customers 
NATURAL LEFT JOIN reservations;

-- NATURAL RIGHT OUTER JOIN : gives all the matching records from the tables and all other records on the right table
SELECT name, day 
FROM customers
NATURAL RIGHT JOIN reservations;