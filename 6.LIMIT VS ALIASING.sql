#LIMIT & ALIASING 
#LIMIT
select *
from employee_demographics
order by age desc
limit 3;

select *
from employee_demographics
order by age desc
limit 2,1;

#ALIASING
select gender , avg(age) as avg_age
from employee_demographics
group by gender
having avg_age> 40;