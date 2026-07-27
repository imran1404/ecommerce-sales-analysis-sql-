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

with abvave as
  (
select avg(total_amount) avgamt from orders
  )
select * from orders
where total_amount >
(select avgamt from abvave);


--5. Revenue by Brand

with revenue as
  (
select sum(oi.quantity*oi.unit_price) totalprice, p.brand
from products p
join order_items oi
on oi.product_id = p.product_id
group by p.brand
  )

select * from revenue;


--6. Product Sales Summary

with salesum as
  (
select product_id, sum(quantity) totalsold
from order_items
group by product_id
  )

select * from salesum;

--7. Average Spending per Customer


with avgspent as
  (
select customer_id, avg(total_amount) avgamt
from orders
group by customer_id
  )

select * from avgspent;


--8. Pending Payments

with pendingpayments as
  (
select *
from payments
where payment_status = "Pending"
  )

select * from pendingpayments;


--9. Delivered Orders

with DeliveredOrders as
  (
select * from Orders
where order_status='delivered'
)
select * from deliveredOrders;


--10. Top 5 customers

with top5 as
  (
select * from orders
order by total_amount desc
limit 5
  )

select * from top5;

--11. Category Revenue


with caterevenue as
  (
select c.category_name, sum(oi.quantity*oi.unit_price) totalamt
from categories c
join products p
on c.category_id = p.category_id
join order_items oi
on oi.product_id = p.product_id
group by c.category_id
  )

select * from caterevenue;


--12. Highest Spending Customer

with highestspent as
  (
select customer_id, sum(total_amount) totalamt from orders
group by order_id
order by total_amount desc
  )

select * from highestspent;


--13. Average Revenue by Payment Method

with avegrevenue as
  (
select payment_method, avg(amount) avgamt
from payments
group by payment_method
  )
select * from avegrevenue;


--14. Customers Above Average Spending

with customerspending as
  (
select customer_id, sum(total_amount) as totalSpent
from orders
group by customer_id
),
Averagespending as
(
select avg(totalspent) as avgspent
from customerspending
)
select * from customerspending
where totalspent >
(select avgspent from averagespending);


--15. Inventory Report

with inventory as
  (
select product_name, stock_quantity, price
from Products
)

select * from inventory
where stock_quantity < 25;








