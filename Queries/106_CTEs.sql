-- CTE (Common Table Expression)

--1.Customer Total Spending

with total_spent as
  (
select customer_id, sum(total_amount) total 
from orders 
group by customer_id
  )
  
select * from total_spent;

--2. Customers Spending More Than ₹50,000

with total_amt as
  (
select customer_id, sum(total_amount) spent_amt
from orders
group by customer_id
  )
select * from total_amt
where spent_amt > 50000;

--3. Products Above Average Price

with abv_avg as
  (
select  avg(price) avg_price
from products
  )
select product_name,price from products
where price >
(select avg_price from abv_avg);

--4. Orders Above Average Order Value

with abvave as(
select avg(total_amount) avgamt from orders)
select * from orders
where total_amount >
(select avgamt from abvave);
































































































