/*
Business Problem 1
Title:
Executive Sales Dashboard

Expected Insight:
Total Revenue
Total Orders
Average Order Value
Highest Order Value
Lowest Order Value
*/

--1. Executive Sales Dashboard

select count(*) total_rows,
 max(total_amount) max_order,
 min(total_amount) min_order,
 avg(total_amount) avg_order_value,
 sum(total_amount) total_revnue
from orders;

--2. Top 5 Customers by Revenue

select c.customer_id, concat(c.first_name,' ', c.last_name) customer_name, sum(o.total_amount) total_revenue
from customers c
join orders o
on o.customer_id = c.customer_id
group by c.customer_id, customer_name
order by total_revenue desc
limit 5;

--3. Best Selling Products

select p.product_name, sum(oi.quantity) units_sold
from products p
join order_items oi
on oi.product_id = p.product_id
group by product_name
order by units_sold;

























































