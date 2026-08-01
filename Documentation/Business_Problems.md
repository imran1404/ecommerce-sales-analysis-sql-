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
```sql
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
```

### Business Insight

The top-performing customers contribute a significant portion of the company's total revenue.

These customers should be targeted with loyalty programs and exclusive offers.


## Problem 2: Best Selling Products

### Business Question

Which products are purchased most frequently?

### Why This Matters

Knowing the best-selling products helps the business:

- Maintain sufficient inventory
- Avoid stock shortages
- Improve demand forecasting
- Increase sales through promotions

### SQL Used

**Best Selling Products Query**

```sql
select p.product_name, sum(oi.quantity) units_sold
from products p
join order_items oi
on oi.product_id = p.product_id
group by product_name
order by units_sold;
```

### Business Insight

The highest-selling products should receive priority in inventory planning and promotional campaigns.




































































































