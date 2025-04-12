#WHERE STATEMENT
SELECT * 
FROM employee_salary
WHERE salary>=50000; 

SELECT * 
FROM employee_demographics
WHERE gender != "female";

#LOGICAL OPERATORS (AND OR NOT)
SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = "male";

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
or gender = "male";

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
or not gender = "male";

SELECT * 
FROM employee_demographics
WHERE (first_name = "Leslie" AND age = 44) OR age > 55;

#LIKE STATEMENTS
# % and _
-- % --> can be used for any no.of characters 
-- _ --> cab be used only for specific no.of characters
SELECT * 
FROM employee_demographics
WHERE first_name LIKE "Jer%";

SELECT * 
FROM employee_demographics
WHERE first_name LIKE "%er%";

SELECT * 
FROM employee_demographics
WHERE first_name LIKE "a%";

SELECT * 
FROM employee_demographics
WHERE first_name LIKE "a___";

SELECT * 
FROM employee_demographics
WHERE first_name LIKE "a___%";



