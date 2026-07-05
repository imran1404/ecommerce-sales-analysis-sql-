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
