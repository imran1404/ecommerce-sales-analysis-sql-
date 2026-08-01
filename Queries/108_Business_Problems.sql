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

--9. Customer Segmentation

select customer_id, sum(total_amount) spending,
case 
when sum(total_amount)>=80000 then'Preminum'
when sum(total_amount)>=30000 then'Gold'
else 'Regular'
end as customer_type
from orders
group by customer_id;

--10.

select category_name,revenue,
round(revenue/sum(revenue)
over()*100,2) as contribution
from(
select c.category_name, sum(oi.quantity*oi.unit_price) Revenue
from categories c
join products p
on c.category_id=p.category_id
join order_items oi
on p.product_id=oi.product_id
group by c.category_name
) x;

--11. Highest Revenue Order

select * from orders
order by total_amount desc
limit 1;

--12. Average Order Size per Customer

select customer_id, round(avg(total_amount),2) avg_orders
from orders
group by customer_id;

--13. Sales KPI Dashboard

select 
 count(*) orders, 
 sum(total_amount) revenue, 
 round(avg(total_amount),2) avg_amount,
 max(total_amount) max_price,
 min(total_amount) min_price
from orders;

--14. Repeat Customers

select customer_id, count(order_id) orders
from orders
group by customer_id
having count(order_id)>1;

--15. Executive Performance Report

select cat.category_name, count(distinct o.order_id) Orders, sum(oi.quantity) units_sold,
sum(oi.quantity*oi.unit_price) revenue,
round(avg(oi.unit_price),2) average_selling_price
from categories cat
join products p
on cat.category_id=p.category_id
join order_items oi
on p.product_id = oi.product_id
join orders o
on oi.order_id=o.order_id
group by cat.category_name
order by revenue desc;



































