#JOINS
SELECT * 
FROM employee_demographics;

SELECT *
FROM employee_salary;
-- INNER JOINS
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    -- OUTER JOINS
    SELECT *
    FROM employee_demographics AS dem
    RIGHT JOIN employee_salary AS sal 
		ON dem.employee_id = sal.employee_id;
        
    SELECT *
    FROM employee_demographics AS dem
    INNER JOIN employee_salary AS sal 
		ON dem.employee_id = sal.employee_id
	INNER JOIN parks_departments AS pd 
		ON sal.dept_id = pd.department_id
        ;
        
 
        
    