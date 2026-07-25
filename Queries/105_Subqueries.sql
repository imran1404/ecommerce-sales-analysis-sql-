-- Subquery

--1. Products Above Average Price

select product_name, price
from products
where price > 
(select avg(price) from products);

--2. Products below Average Price

select product_name, price
from products
where price <
(select avg(price) from products);

--3. Most Expensive Product

select product_name, price
from products
where price = 
(select max(price) from products);

--4. Cheapest Product

select product_name, price
from products
where price = 
(select min(price) from products;

--5. Customers Who Spent Above Average

select customer_id, first_name
from customers
where customer_id in
(select order_id from orders
where total_amount>
(select avg(total_amount) from orders)
);

--6. Orders Above Average Order Value

select order_id , total_amount
from orders
where total_amount>
(select avg(total_amount) from orders);

--7. Products Never Ordered

select product_name, brand
from products
where product_name not in
(select product_id from order_items);

--8. Customers Without Orders

select customer_id, first_name
from customers
where customer_id not in
(select customer_id from orders);

--9. Products Costing More Than Dell Product

select product_name, price
from products
where price >
(select price from products
where product_name='Dell Inspiron 15');

--10. Highest Order Amount

select *
from orders
where total_amount =
(select max(total_amount) from orders);

--11. Second Highest Product Price

select max(price) second_highest
from products
where price <
(select max(price) from products);

--12. Second Highest Order Value

select max(total_amount) as sec_highest
from orders
where total_amount <
(select max(total_amount) from orders);

--13. Customers Who Purchased Electronics

select first_name, last_name
from customers 
where customer_id in
(select o.customer_id from orders o
join order_items oi
on o.order_id = oi.order_id
join products p
on p.product_id = oi.product_id
where p.category_id =
(select category_id from categories
where category_name = 'Electronics')
);

--14. Products Above Brand Average

select product_name, brand, price
from products p1
where price >
(select avg(price) from products p2
where p1.brand = p2.brand);

--15. Customers With Highest Spending

select first_name
from customers
where customer_id = 
(select customer_id from orders
group by customer_id
order by sum(total_amount)
limit 1);



























