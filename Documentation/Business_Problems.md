## Problem 1: Identify the Highest Revenue Customers

### Business Question

Which customers generate the highest revenue?

### Why This Matters

Understanding the highest revenue customers helps the business:

- Reward loyal customers
- Create personalized marketing campaigns
- Improve customer retention
- Increase repeat purchases

### SQL Used

select c.customer_id, concat(c.first_name, ' ', c.last_name) customer_name, sum(p.amount) total_revenue
from customers c
join orders o
on c.customer_id = o.customer_id
join Payments p
on o.order_id = p.order_id
where p.payment_status = 'Completed'
group by c.customer_id, customer_name
order by total_revenue desc
limit 5;

### Business Insight

The top-performing customers contribute a significant portion of the company's total revenue.

These customers should be targeted with loyalty programs and exclusive offers.







































































































