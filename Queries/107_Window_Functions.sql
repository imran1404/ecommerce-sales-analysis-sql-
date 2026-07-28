-- Windows functions
Funtions of windows function:
--Function	          Purpose
ROW_NUMBER()	    Unique numbering
RANK()	          Ranking with gaps
DENSE_RANK()	    Ranking without gaps
NTILE()	          Divide rows into groups
LAG()	            Previous row
LEAD()	          Next row
SUM() OVER()	    Running Total
AVG() OVER()	    Moving Average
FIRST_VALUE()	    First value
LAST_VALUE()	    Last value


  
--1. Row Number by Product Price

select product_name, price,
row_number() over(order by price desc) row_num
from products;

--2. Rank Products by Price

select product_name, price,
rank() over(order by price desc) row_num
from products;

--3. Dense Rank Products

select product_name, price,
dense_rank() over(order by price desc)
from products;

--4. Row Number Within Each categories

select category_id, product_name, price,
row_number() over(partition by category_id order by price desc) row_num
from products;

--5. Running Total of Revenue

select order_id, total_amount, sum(total_amount) 
over(order by order_date) running_total
from orders;

--6. Average Order Value

select order_id, total_amount,
round(avg(total_amount) over(),2) avg_orders
from orders;

--7. Previous Order Amount

select order_id, order_date,
lag(total_amount) over(order by order_date) prev_orders
from orders;

--8. Next Order Amount

select order_id, order_date, 
lead(total_amount) over(order by order_date) next_order
from orders;

--9. Highest Price in Each Brand

select product_name, brand, price,
max(price) over(partition by brand) highestprice
from products;

--10. Lowest Price in Each Brand

select product_name, brand, price,
min(price) over(partition by brand) lowest
from products;

--11. Top 3 Most Expensive Products

select product_name, price,
dense_rank() over(order by price desc) prodprice
from products
limit 3;

--12. Top Customer by Spending

with topspent as(
select customer_id, sum(total_amount) Spending,
rank() over(order by sum(total_amount) desc) totalspent
from orders
group by customer_id)
select * from topspent;

--13. Brand Ranking

select brand, product_name, price,
rank() over(partition by brand ) topbrand
from products;

--14. Running Revenue

select order_date, total_amount, sum(total_amount)
over(order by order_date rows between unbounded preceding and current row) as running_revenue
from orders;

--15. Quartile Analysis

select product_name, price,
ntile(4) over(order by price desc) as quartile
from products;






































































