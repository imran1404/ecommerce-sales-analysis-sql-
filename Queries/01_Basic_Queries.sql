/*
===========================================
Basic SQL Queries
Project : E-Commerce Sales Analysis
Author  : Maddy
===========================================
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

select distinct(brand), product_name
from products;


























