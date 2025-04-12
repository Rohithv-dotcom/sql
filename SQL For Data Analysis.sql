select*
from sales;

select saledate , Amount ,Customers
FROM sales;

SELECT SaleDate , Amount , Boxes , amount/boxes AS 'Amount Per Box' from Sales;

SELECT *
FROM sales
WHERE amount > 10000;

SELECT *
FROM sales
WHERE amount > 10000
ORDER BY amount DESC;

SELECT * 
FROM sales 
WHERE geoid = 'g1'
ORDER BY PID , amount DESC;

SELECT * 
FROM SALES 
WHERE amount > 10000 and saledate >= '2022-01-01';

SELECT saledate,amount FROM sales 
WHERE  Amount > 10000 and year(saledate) = 2022
ORDER BY amount DESC;

SELECT * 
FROM sales 
WHERE boxes > 0 AND boxes <=50;

SELECT * 
FROM sales 
WHERE boxes BETWEEN 0 and 50;

SELECT saledate , amount , boxes , weekday(Saledate) as 'day of week '
FROM sales
WHERE weekday(Saledate) = 4;

select* 
from people;

select *
from people 
where team = 'Delish' OR team = 'Jucies';

select*
from people 
where team in ('Delish' , 'Jucies');

 select*
 from people 
 where salesperson like 'b%';
 
  select*
 from people 
 where salesperson like '%b%';
 
 select*
 from sales ;
 
 select saledate,amount,
	case 
		when amount < 1000 then 'Under 1k'
        when amount < 5000 then 'Under 5k'
        when amount < 10000 then 'Under 10k'
	else '10k or More'
end as 'Amount Category'
from sales ;

-- JOINS 
select s.saledate , s.amount , p.salesperson,p.SPID
from sales s
join people p on p.SPID = s.SPID;

select s.saledate , s.amount , pr.product
from sales s
left join products pr on pr.pid = s.pid;

select s.saledate , s.amount , p.salesperson,pr.product,p.team
from sales s
join people p on p.SPID = s.SPID
left join products pr on pr.pid = s.pid;

select s.saledate , s.amount , p.salesperson,pr.product,p.team
from sales s
join people p on p.SPID = s.SPID
left join products pr on pr.pid = s.pid
WHERE s.amount < 500
and p.Team = 'Delish';

select s.saledate , s.amount , p.salesperson,pr.product,p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
join geo g on g.geoid = s.geoid 
WHERE s.amount < 500
and p.Team = ''
and g.geo in ('New Zealand' , ' India')
order by saledate ;

-- GROUP BY AND AGGREGATIONS
SELECT geoid , SUM(amount) , AVG (amount) , SUM(boxes)
from sales 
GROUP BY geoid;

SELECT geo , SUM(amount) , AVG (amount) , SUM(boxes)
from sales s 
join geo g on s.geoid = g.geoid  
GROUP BY geo;

select pr.category , p.team , sum(boxes) , sum(amount)
from sales s 
join people p on p.spid = s.spid 
join products pr on pr.pid = s.pid
where p.team <> ''
group by pr.category , p.team 
order by pr.category , p.team;

select pr.product , sum(amount) as 'Total Amount'
from sales s 
join products pr on pr.pid = s.pid 
group by pr.product 
order by 'Total Amount' desc
limit 10;


    
 
