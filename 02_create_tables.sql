Use e_commerceDB;


create table customers (
             customers_id int auto_increment primary key,
             first_name varchar(100) not null,
             last_name varchar(100) not null,
             email varchar(250) not null unique,
             phone varchar(15) unique,
             date_of_birth date,
             gender enum('Male', 'Female', 'Other'),
             city varchar(50),
             State varchar(50),
             county varchar(50),
             created_at timestamp default current_timestamp
);


 create table Categories (
    category_id INT AUTO_INCREMENT primary key,
    category_name VARCHAR(100) not null unique,
    description VARCHAR(255),
    created_at TIMESTAMP default current_timestamp
);


create table products(
			 product_id int auto_increment primary key,
             product_name varchar(100) not null,
             category_id int not null,
             brand varchar(100) not null,
             price decimal (10,2) not null,
             stock_quantity int not null default 0,
             description text,
             created_at timestamp default current_timestamp,
             
              constraint fk_product_category
        foreign key (category_id)
        references Categories(category_id)
);


create table orders (
    order_id int auto_increment primary key,
    customer_id int not null,
    order_date date not null,
    order_status enum('Pending', 'Shipped', 'Delivered', 'Cancelled') not null,
    total_amount DECIMAL(10,2),

    constraint fk_order_customer
        foreign key (customer_id)
        references customers(customers_id)
);


create table Order_Items (
    order_item_id int auto_increment primary key,
    order_id int not null,
    product_id int not null,
    quantity int not null,
    unit_price decimal(10,2) not null,

    constraint fk_orderitems_order
        foreign key (order_id)
        references Orders(order_id),

    constraint fk_orderitems_product
        foreign key (product_id)
        references Products(product_id)
);


create table Payments (
    payment_id int auto_increment primary key,
    order_id int not null,
    payment_method enum('Credit Card','Debit Card','UPI','Net Banking','Cash on Delivery' ) not null,
	payment_status enum('Pending','Completed','Failed','Refunded') not null,
	payment_date datetime default current_timestamp,
    amount decimal(10,2) not null,

    constraint fk_payment_order
        foreign key (order_id)
        references Orders(order_id)
);


Customers
│
└──── Orders
      │
      ├──── Payments
      │
      └──── Order_Items
             │
             └──── Products
                    │
                    └──── Categories
