# Data Dictionary

This document provides a business description of every table used in the E-Commerce Database project.

The data dictionary helps developers, analysts, and recruiters quickly understand the purpose of each table without reading SQL scripts.

| Table | Business Meaning |
|-------|------------------|
| Customers | Stores customer information. |
| Categories | Stores product categories. |
| Products | Stores product details and inventory information. |
| Orders | Stores customer order information. |
| Order_Items | Stores individual products included in each order. |
| Payments | Stores payment transaction details. |

## Business Rules

- Every customer can place multiple orders.
- Every order belongs to one customer.
- Every order contains one or more products.
- Products are organized into categories.
- Every payment is associated with an order.
- Inventory is tracked using the Products table.


## Business Objectives

This database is designed to support:

- Customer Management
- Product Catalog Management
- Order Processing
- Payment Tracking
- Sales Reporting
- Inventory Management








































































