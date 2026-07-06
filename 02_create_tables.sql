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

