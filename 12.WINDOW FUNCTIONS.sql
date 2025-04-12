-- WINDOW FUNCTIONS

SELECT gender , AVG(salary) AS Avg_salary
FROM employee_demographics AS dem 
JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
GROUP BY gender;

SELECT dem.first_name , dem.last_name , gender , AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name , dem.last_name , gender , salary ,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name , dem.last_name , gender , salary ,
ROW_NUMBER() OVER (PARTITION BY gender ORDER BY salary DESC),
RANK() OVER (PARTITION BY gender ORDER BY salary DESC) AS Rank_num
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    