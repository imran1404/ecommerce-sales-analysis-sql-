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

--8.


























































































