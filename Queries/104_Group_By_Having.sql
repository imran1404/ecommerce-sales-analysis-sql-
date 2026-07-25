-- Group By, Having quries

--1. Number of customers in each state

select state, count(*) as total_states
from customers
group by state;

--2. Total number of customers in each city

select city, count(*) as total_city
from customers
group by city;

--3. Number of products available in each category

select category_id, count(*) as total_product
from products
group by category_id;

--4. Orders by Status

select order_status, count(*) total_orders
from orders
group by order_status;

--5. Payment Count by Method

select payment_method, count(*) as total_method
from payments
group by payment_method;

--6. Average Product Price by Brand

select brand, avg(price) avg_price
from products
group by brand;

--7. Total Stock by Brand

select brand, sum(stock_quantity) total_stock
from products
group by brand;

--8. Customers with More Than One Order

select customer_id, count(order_id) total_orders
from orders
group by customer_id
having total_orders>1;

--9. Categories Having More Than One Product

select category_id, count(product_id) total_products
from products
group by category_id
having total_stock>1;

--10. Payment Methods Used More Than Once

select payment_method, count(*) Usage_Count
from payments
group by payment_method
having usage_count>1;

--11. Brands with Average Price Above ₹10,000

select brand, avg(price) avg_price
from products
group by brand
having avg_price > 10000;

--12. States Having More Than One Customer

select state, count(customer_id) total_customers
from customers
group by state
having total_customers>1; 

--13. Revenue by Category

select c.category_id, sum(oi.quantity*oi.unit_price) total_amount
from categories c
join products p
on c.category_id = p.category_id
join order_items oi
on p.product_id = oi.product_id
join payments py
on oi.order_id = py.order_id
group by c.category_id
order by total_amount desc;

--14. Top 5 Customers by Spending

select c.customer_id, sum(o.total_amount) total_amt
from customers c
join orders o
on c.customer_id = o.customer_id
join payments p
on o.order_id = p.order_id
group by c.customer_id
order by total_amt desc
limit 5;

--15. Most Popular Product

select p.product_name, sum(oi.quantity) total_quan
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.product_name
order by total_quan desc
limit 1;

--16. Brand-wise Revenue

select p.brand, sum(oi.quantity*oi.unit_price) revenue
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.brand
order by revenue desc;


















































































