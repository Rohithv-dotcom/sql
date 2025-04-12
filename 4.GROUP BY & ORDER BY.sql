#GROUP BY	
SELECT*
from employee_demographics;

select gender , avg(age) , max(age) , min(age) , count(age)
from employee_demographics
group by gender;

select occupation
from employee_salary
group by occupation;

#ORDER BY
select * 
from employee_demographics
order by first_name asc;

select * 
from employee_demographics
order by gender , age desc;

