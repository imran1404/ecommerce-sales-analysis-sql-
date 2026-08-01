# E-Commerce Database Schema

This document explains the structure of the E-Commerce Database used in this project.

It includes:

- Tables
- Columns
- Data Types
- Primary Keys
- Foreign Keys
- Relationships


## Customers Table

|    Column   |         Data Type           |     Description     |
|-------------|-----------------------------|---------------------|
| customer_id |            INT              | Primary Key         |
| first_name  |         VARCHAR(50)         | Customer First Name |
| last_name   |         VARCHAR(50)         | Customer Last Name  |
| email       |         VARCHAR(100)        | Customer Email Add  |
| city        |         VARCHAR(50)         | Customer City       |
| state       |         VARCHAR(50)         | Customer State      |
| country     |         VARCHAR(50)         | Customer Country    |

## Products Table

| Column        |     Data Type    |     Description     |
|---------------|----------------  |---------------------|
| product_id    |        INT       | Primary Key         |
| product_name  |     VARCHAR(150) | Product Name        |
| category_id   |        INT       | Foreign Key         |
| brand         |     VARCHAR(100) | Product Brand       |
| price         |     DECIMAL(10,2)| Selling Price       |
| stock_quantity|        INT       | Available Stock     |
| description   |        TEXT      | Product Description |













