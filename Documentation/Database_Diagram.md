# Database Diagram (ERD)

This Entity Relationship Diagram (ERD) provides a high-level overview of the relationships between the tables in the E-Commerce Database.

The diagram illustrates how customer information, orders, products, categories, and payments are connected.


                 Customers
                     │
                     │ 1
                     │
                     ▼
                 Orders
                     │
                     │ 1
                     │
                     ▼
               Order_Items
               ▲         ▲
               │         │
             Many      Many
               │         │
               │         │
          Products ──────┘
               ▲
               │ Many
               │
               │
          Categories

                 Orders
                     │
                     │ 1
                     ▼
                 Payments



## Table Relationships

### Customers → Orders

- One customer can place multiple orders.
- Each order belongs to one customer.

Relationship:
**One-to-Many (1:N)**

---

### Orders → Order_Items

- One order can contain multiple products.
- Each order item belongs to one order.

Relationship:
**One-to-Many (1:N)**

---

### Categories → Products

- One category contains multiple products.
- Each product belongs to one category.

Relationship:
**One-to-Many (1:N)**

---

### Products → Order_Items

- One product can appear in multiple order items.
- Each order item represents one product.

Relationship:
**One-to-Many (1:N)**

---

### Orders → Payments

- One order has one or more payment records.
- Each payment belongs to one order.

Relationship:
**One-to-Many (1:N)**


## Database Flow

Customer
↓
Places an Order
↓
Order contains multiple Products
↓
Each Product belongs to a Category
↓
Customer completes Payment


## Key Design Highlights

- Uses Primary Keys to uniquely identify records.
- Uses Foreign Keys to maintain referential integrity.
- Supports one-to-many relationships between core business entities.
- Separates transactional data from master data.
- Designed using normalization principles to reduce redundancy.
















































































































