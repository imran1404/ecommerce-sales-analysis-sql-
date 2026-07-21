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


--3. Display Each orders With Its Payment Details

select o.customer_id, o.order_id, p.payment_id, p.payment_method
from orders o
inner join payments p
on o.order_id = p.order_id;

--4. Display complete order details

select c.first_name, oi.order_id, o.order_date, p.payment_method, pc.product_name
from orders o
inner join customers c
on o.customer_id = c.customer_id
inner join order_items oi
on oi.order_id = o.order_id
inner join payments p
on p.order_id = oi.order_id
inner join products pc
on pc.product_id = oi.product_id;

--5. Display Delivered Orders with Customers Detail


select o.order_status, c.first_name
from orders o
inner join customers c
on o.customer_id = c.customer_id
where o.order_status = "Delivered";

--6. Display Ordes With Payment Pending

select o.order_id, p.payment_method, p.payment_status
from orders o
inner join payments p
on o.order_id = p.order_id
where p.payment_status = "Pending";

--7. Display All products Purchased By 'Imran'

select c.last_name, p.product_name 
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on oi.order_id = o.order_id
inner join products p
on p.product_id = oi.product_id
where c.last_name = "Imran";

--8. Display Electronics products purchased

select cat.category_name, p.product_name, c.first_name
from categories cat
inner join products p
on cat.category_id = p.category_id
inner join order_items oi
on p.product_id = oi.product_id
inner join orders o
on oi.order_id = o.order_id
inner join customers c
on c.customer_id = o.customer_id
where cat.category_name = "Electronics";

--9. Display cancelled orders

select p.product_name, o.order_status
from order_items oi
inner join orders o
on oi.order_id = o.order_id
inner join products p
on p.product_id = oi.product_id
where o.order_status = 'Cancelled';

--10. Customers Who Never Ordered

select c.first_name, o.order_id
from customers c
left join orders o
on o.customer_id = c.customer_id
where o.order_id is null;

--11. Products Never Purchased

select p.product_name
from products p
left join order_items oi
on p.product_id = oi.product_id
where oi.order_item_id is null;

--12. Categories Without Products

select c.category_name, p.product_name
from categories c
left join products p
on p.category_id = c.category_id
where product_id is null;

--13. Orders Without Payments

select o.order_id, p.payment_method
from orders o
left join payments p
on p.order_id = o.order_id
where payment_id is Null;

--14. Customers with Number of Orders

select c.first_name, o.order_id
from customers c
left join orders o
on c.customer_id = o.customer_id
order by c.first_name;

--















































