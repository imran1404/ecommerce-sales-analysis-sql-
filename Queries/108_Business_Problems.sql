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

--4. Revenue by Category

select c.category_id, c.category_name, sum(oi.quantity*oi.unit_price) total_revnue
from categories c
join products p
on p.category_id = c.category_id
join order_items oi
on p.product_id = oi.product_id
group by c.category_id
order by total_revnue desc;

--5. Payment Method Usage

select payment_method, count(*) total_transactions
from payments
group by payment_method
order by total_transactions desc;

--6. Cancelled Orders Analysis

select order_status, count(*) total
from orders
where order_status = "cancelled"
group by order_status;

--7. Customer Purchase Summary

select concat(c.first_name,' ',c.last_name) customer_name, pr.product_name, pr.brand, oi.quantity, o.order_status, p.payment_method
from customers c
join orders o
on o.customer_id = c.customer_id
join order_items oi
on o.order_id = oi.order_id
join payments p
on o.order_id = p.order_id
join products pr
on oi.product_id = pr.product_id;

--8. Customer Lifetime Value (CLV)

select c.customer_id, concat(c.first_name,' ',c.last_name) customer_name, sum(total_amount) lifetime_value
from orders o
join customers c
on o.customer_id = c.customer_id
group by customer_id, customer_name
order by lifetime_value desc;

--9.

















































