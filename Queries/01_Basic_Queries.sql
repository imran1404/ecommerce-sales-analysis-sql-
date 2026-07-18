/*
Basic SQL Queries
Project : E-Commerce Sales Analysis
Author  : Mohammed Imran M
Project Title : E_CommerceDB
*/

-- 1. Display all customers

SELECT *
FROM Customers;


-- 2. Display all products

SELECT *
FROM Products;


-- 3. Display customer first and last names

SELECT first_name, last_name
FROM Customers;


--4. Product Cost more than 50000

select product_name, price
from products
where price > 50000;


--5. Customers Living in Tamil Nadu

select first_name, State, City
from customers
where state = 'Tamil Nadu';


--6. Product Priced between 1000 To 10000

select product_name, price
from products
where price between 1000 and 10000;


--7. Search Product Containing 'Phone'

select product_name
from products
where product_name Like ('%phone%');


--8. Sorting Product by Highest price

select product_name, price
from products
order by price desc;


--9. Top 5 most Expensive Products

select product_name, price
from products
order by price desc
limit 5;


--10. Display All Unique Brands

select distinct(brand)
from products;


--11. Display All the Orders That Have Been Delivered

select customer_id, order_status
from orders
where order_status = "delivered";


--12. Display All Pending Orders

select customer_id, order_status
from orders
where order_status = "pending";


--13. Find all the product with less than 20 quantity

select product_name, stock_quantity
from products
where stock_quantity < 20;


--14. Display Customers from Chennai

select first_name, city
from customers
where city = "Chennai";


--15. Display all products belonging to Electronics

select category_id, product_name
from products
where category_id = 1;


--16. Find products from Apple Brand

select category_id, product_name
from products
where brand = "Apple";


--17. Display All customers born After 2000

select first_name, date_of_birth
from customers
where date_of_birth > '2000-01-01';


--18. Display product sorted by lowest price

select product_name, price
from products
order by price asc;


--19. Display First Five customers

select *
from customers
limit 5;


--20. Display products whose brand is either Apple, Dell, or Samsung

select product_name, brand
from products
where brand in ('Apple', 'Dell', 'Samsung')





