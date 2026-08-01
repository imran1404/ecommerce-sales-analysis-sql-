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




















































































































