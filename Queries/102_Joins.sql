-- Joins Query.

--1. List customers with their ordered product details

select c.first_name, o.order_id, oi.product_id, p. product_name, p.category_id
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on oi.order_id = o.order_id
inner join products p
on p.product_id = oi.product_id;


--2. Show Products with Their Category Names

select p.product_id, p.product_name, c.category_name
from products p
inner join categories c
on p.category_id = c.category_id
order by product_id;



