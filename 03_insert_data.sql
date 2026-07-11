insert into Categories (category_name, description)
values
('Electronics', 'Electronic Gadgets and Devices'),
('Clothings', 'Men and Women Fashions'),
('Books', 'Educational and entertainment Books'),
('Home and Kitchen', 'Home Applience and Kitchen Essentials'),
('Sports', 'Sports and Fitness Equipments'),
('Beauty', 'Beauty and Personal Care Products'),
('Toys', 'Kids Toys and games'),
('Furnitures', 'Home and Office Furnitures'),
('Groceries', 'Daily Groceries Items'),
('Automotive', 'Vehicle Accessories');


insert into customers (first_name, last_name, email, phone, date_of_birth, gender, city, state, country)
values
('Mohammed', 'imran', 'imran@gmail.com', '99xxx xxxx1', '2006-04-14', 'Male', 'Chennai', 'Tamil nadu', 'India'),
('Mohammed', 'ashiq', 'asiq128@gmail.com', '98xxx xxxx2', '2006-01-04', 'Male', 'Chennai', 'Tamil Nadu', 'India'),
('Swetha', 'abi', 'Swetha30@gmail.com',  '99xxx xxxx3', '2004-11-20', 'Female', 'Madurai', 'Tamil Nadu', 'India'),
('Kathir', 'M', 'Kathiresen@gmail.com', '98xxx xxxx4', '2003-08-19', 'Male', 'Chennai', 'Tamil Nadu', 'India'),
('Yeshwant', 'raj', 'yesh@gmail.com', '68xxx xxxx5', '2003-07-12', 'Male', 'Chennai', 'Tamil Nadu', 'India'),
('Sneha', 'patel', 'sneha@gmail.com', '99xxx xxxx6', '2000-04-12', 'Female', 'Jaipur', 'Rajasthan', 'India'),
('Karan', 'sharma', 'karansharma@gmail.com', '99xxx xxxx7', '2002-04-13', 'Male', 'Mumbai', 'Maharashtra', 'India'),
('Gulnas', 'begam', 'gulnas01@gmail.com', '68xxx xxxx8', '2000-03-26', 'Female', 'Chennai', 'Tamil Nadu', 'India'),
('Priya', 'ravi', 'priya234@gmail.com', '99xxx xxxx9', '2001-05-17', 'Female', 'Kanyakumari', 'Tamil nadu', 'India'),
('Dhanush', 'kumar', 'dk0123@gmail.com', '98xxx xxx10', '2005-07-07', 'Male', 'Chennai', 'Tamil Nadu', 'India'),
('Vijay', 'joseph', 'cmvijay@gmail.com', '99xxx xxx11', '1974-06-22', 'Male', 'Chennai', 'Tamil Nadu', 'India');


INSERT INTO Products
(product_name, category_id, brand, price, stock_quantity, description)
VALUES
('Dell Inspiron 15', 1, 'Dell', 59999.00, 20, '15.6-inch laptop with Intel Core i5'),
('Iphone 16', 1, 'Apple', 89999.00, 15, 'Latest Apple smartphone'),
('Samsung Galaxy S25', 1, 'Samsung', 149999.00, 12, 'Android flagship smartphone'),
('OnePlus 13', 1, 'OnePlus', 39999.00, 17, 'Flagship Android smartphone'),
('boat Bluetooth Speaker', 1, 'boat', 1299.00, 30, 'Portable Bluetooth speaker'),
('Nike Running Shoes', 2, 'Nike', 12999.00, 8, 'Comfortable running shoes'),
('Denim Shirt', 2, 'Louis Philippe', 2999.00, 9, 'Premium denim shirt'),
('Levi''s Jeans', 2, 'Levi''s', 7999.00, 4, 'Slim fit blue jeans'),
('Women''s Kurti', 2, 'Biba', 1799.00, 11, 'Cotton kurti'),
('Leather Jacket', 2, 'Zara', 5999.00, 13, 'Premium leather jacket'),
('Reebok Track Pants', 2, 'Reebok', 1899.00, 10, 'Comfortable track pants'),
('Atomic Habits', 3, 'Penguin', 299.00, 30, 'Best-selling self-improvement book'),
('The Avengers', 3, 'Marvel', 699.00, 120, 'Marvel comic book'),
('The Psychology of Money', 3, 'Jaico', 299.00, 200, 'Personal finance book'),
('Deep Work', 3, 'Piatkus', 799.00, 150, 'Productivity and focus book'),
('Induction Stove', 4, 'Prestige', 3499.00, 30, 'Energy-efficient induction stove'),
('Air Fryer', 4, 'Philips', 11299.00, 10, 'Healthy cooking appliance'),
('Vacuum Cleaner', 4, 'Dyson', 39999.00, 6, 'Cordless vacuum cleaner'),
('Electric Kettle', 4, 'Pigeon', 2999.00, 5, '1.5L electric kettle'),
('English Willow Bat', 5, 'Gray-Nicolls', 30000.00, 10, 'Premium cricket bat'),
('Yoga Mat', 5, 'Boldfit', 399.00, 30, 'Anti-slip yoga mat'),
('Football', 5, 'Nivia', 899.00, 70, 'Professional football'),
('Dumbbell Set', 5, 'Kore', 4999.00, 30, '20 kg dumbbell set'),
('Cricket Kit', 5, 'SS', 20000.00, 20, 'Complete cricket accessories'),
('Vitamin C Serum', 6, 'Minimalist', 800.00, 60, 'Anti-acne serum'),
('Face Wash', 6, 'Cetaphil', 600.00, 20, 'Gentle cleanser'),
('Sunscreen SPF 50', 6, 'The Derma Co', 399.00, 30, 'Broad-spectrum sunscreen'),
('Moisturizer', 6, 'Cetaphil', 699.00, 20, 'Daily moisturizer'),
('Shampoo', 6, 'L''Oreal', 399.00, 70, 'Hair fall control shampoo'),
('Remote Control Car', 7, 'Hot Wheels', 1499.00, 20, 'Rechargeable toy car'),
('Teddy Bear', 7, 'Funskool', 2999.00, 30, 'Soft teddy bear'),
('Study Table', 8, 'IKEA', 3999.00, 5, 'Wooden study table'),
('Dining Table', 8, 'Godrej', 19999.00, 8, '6-seater dining table'),
('Sofa Set', 8, 'Urban Ladder', 45999.00, 5, '3-seater sofa'),
('Basmati Rice', 9, 'India Gate', 699.00, 70, 'Premium basmati rice'),
('Sunflower Oil', 9, 'Fortune', 189.00, 100, 'Refined sunflower oil'),
('Aashirvaad Atta', 9, 'Aashirvaad', 549.00, 50, 'Whole wheat flour'),
('Tata Salt', 9, 'Tata', 30.00, 20, 'Iodized salt'),
('Car Vacuum Cleaner', 10, 'AGARO', 1200.00, 10, 'Portable car vacuum cleaner'),
('Car Phone Holder', 10, 'Portronics', 399.00, 15, 'Dashboard phone holder'),
('Bike Helmet', 10, 'Studds', 1999.00, 5, 'ISI-certified helmet');


insert into orders(customer_id, order_date, order_status, total_amount)
values
(1, '2026-07-10', 'Delivered', 60798.00),
(2, '2026-07-10', 'Delivered', 89999.00),
(3, '2026-07-11', 'Pending', 4999.00),
(4, '2026-07-11', 'Shipped', 3499.00),
(5, '2026-07-12', 'Delivered', 599.00),
(6, '2026-07-12', 'Cancelled', 2999.00),
(7, '2026-07-13', 'Pending', 2599.00),
(8, '2026-07-13', 'Delivered', 74999.00),
(9, '2026-07-14', 'Delivered', 8999.00),
(10, '2026-07-14', 'Shipped', 799.00);
