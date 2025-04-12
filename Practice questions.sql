-- 1. Print details of shipments (sales) where amounts are > 2,000 and boxes are <100?
select * from sales 
where amount > 2000 
and boxes < 100;

select* 
from sales;

-- 2. How many shipments (sales) each of the sales persons had in the month of January 2022?
select p.salesperson as 'Shipment Count'
from sales s 
join people p on s.spid = p.spid 
where saledate between '2022-01-01' and '2022-01-31'
group by p.salesperson;

select* 
from sales;

select* 
from products;

-- 3. Which product sells more boxes? Milk Bars or Eclairs?
select pr.product , sum(boxes)
from sales s
join products pr on pr.pid = s.pid 
where pr.product = 'Milk bars' or 'Eclairs'
group by pr.product;

-- 4. Which product sold more boxes in the first 7 days of February 2022? Milk Bars or Eclairs?
select pr.product , sum(boxes)
from sales s 
join products pr on pr.pid = s.pid 
where pr.product in ('Milk Bars' ,'Eclairs' )
and saledate between '2022-02-01' and '2022-02-07'
group by pr.product;