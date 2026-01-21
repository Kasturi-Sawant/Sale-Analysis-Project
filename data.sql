-- ============================================================
-- Project: Sales Analysis SQL Project (MySQL)
-- File: data.sql
-- Author: Kasturi Sawant
-- Description: Insert sample data for analysis
-- ============================================================

USE sales_analysis_db;

-- ============================================================
-- Insert Customers
-- ============================================================
INSERT INTO customers (customer_name, city) VALUES
('Amar Sutar', 'Pune'),
('Kasturi Sawant', 'Mumbai'),
('Sneha Jadhav', 'Kolhapur'),
('Priya Shinde', 'Nashik'),
('Akshay More', 'Nagpur'),
('Aniket Desai', 'Sangli'),
('Komal Pawar', 'Satara'),
('Sanket Patil', 'Solapur'),
('Neha Kulkarni', 'Pune'),
('Swapnil Joshi', 'Mumbai'),
('Vaibhav Patil', 'Kolhapur'),
('Aditi Chavan', 'Nashik'),
('Ruturaj Mane', 'Pune'),
('Omkar Jadhav', 'Nagpur'),
('Pooja Patil', 'Sangli'),
('Kiran Shinde', 'Satara'),
('Tejas Deshmukh', 'Solapur'),
('Mayuri Sawant', 'Pune'),
('Sagar Jadhav', 'Mumbai'),
('Shubham Patil', 'Kolhapur'),
('Sonal Shinde', 'Nashik'),
('Raj Patil', 'Pune'),
('Nikita More', 'Nagpur'),
('Prathamesh Kulkarni', 'Sangli'),
('Riya Pawar', 'Satara'),
('Manish Joshi', 'Solapur'),
('Harshad Patil', 'Pune'),
('Shruti Chavan', 'Mumbai'),
('Atharva Mane', 'Kolhapur'),
('Sayali Jadhav', 'Nashik'),
('Yash Shinde', 'Pune'),
('Tanvi Patil', 'Nagpur'),
('Rohan More', 'Sangli'),
('Megha Kulkarni', 'Satara'),
('Gaurav Joshi', 'Solapur'),
('Isha Patil', 'Pune'),
('Nilesh Jadhav', 'Mumbai'),
('Aishwarya Shinde', 'Kolhapur'),
('Siddhant Patil', 'Nashik'),
('Pritam More', 'Pune'),
('Shreya Kulkarni', 'Nagpur'),
('Vishal Joshi', 'Sangli'),
('Kavya Patil', 'Satara'),
('Aditya Jadhav', 'Solapur'),
('Suhas Shinde', 'Pune'),
('Prachi Patil', 'Mumbai'),
('Ramesh More', 'Kolhapur'),
('Seema Kulkarni', 'Nashik'),
('Dhanraj Joshi', 'Nagpur'),
('Rutuja Patil', 'Pune');

-- ============================================================
-- Insert Products
-- ============================================================
INSERT INTO products (product_name, category, selling_price, cost_price) VALUES
('Milk 1L', 'Dairy', 55, 38),
('Curd 500g', 'Dairy', 45, 30),
('Paneer 200g', 'Dairy', 95, 70),
('Butter 100g', 'Dairy', 60, 42),
('Cheese Slices', 'Dairy', 120, 90),

('Bread White', 'Bakery', 40, 25),
('Bread Brown', 'Bakery', 45, 28),
('Bun Pack', 'Bakery', 35, 20),
('Cake Slice', 'Bakery', 55, 35),
('Cookies Pack', 'Bakery', 70, 45),

('Rice 1kg', 'Grocery', 80, 60),
('Wheat Flour 1kg', 'Grocery', 65, 48),
('Sugar 1kg', 'Grocery', 55, 40),
('Salt 1kg', 'Grocery', 25, 15),
('Toor Dal 1kg', 'Grocery', 140, 115),

('Tea 250g', 'Beverages', 140, 110),
('Coffee 100g', 'Beverages', 160, 125),
('Cold Drink 750ml', 'Beverages', 45, 30),
('Juice 1L', 'Beverages', 110, 80),
('Mineral Water 1L', 'Beverages', 20, 12),

('Soap', 'Personal Care', 35, 20),
('Shampoo 180ml', 'Personal Care', 130, 90),
('Toothpaste 150g', 'Personal Care', 95, 68),
('Face Wash', 'Personal Care', 150, 110),
('Body Lotion', 'Personal Care', 180, 140),

('Detergent 1kg', 'Home Care', 120, 85),
('Dishwash Liquid', 'Home Care', 95, 65),
('Floor Cleaner', 'Home Care', 150, 110),
('Toilet Cleaner', 'Home Care', 110, 75),
('Tissue Paper Pack', 'Home Care', 60, 40),

('Chips', 'Snacks', 30, 18),
('Biscuits', 'Snacks', 25, 16),
('Namkeen', 'Snacks', 50, 32),
('Chocolate', 'Snacks', 40, 25),
('Instant Noodles', 'Snacks', 55, 38),

('Apple 1kg', 'Fruits', 180, 140),
('Banana 1 dozen', 'Fruits', 60, 40),
('Orange 1kg', 'Fruits', 120, 85),
('Grapes 1kg', 'Fruits', 160, 120),
('Mango 1kg', 'Fruits', 220, 180),

('Tomato 1kg', 'Vegetables', 50, 30),
('Potato 1kg', 'Vegetables', 45, 28),
('Onion 1kg', 'Vegetables', 55, 35),
('Carrot 1kg', 'Vegetables', 70, 45),
('Capsicum 500g', 'Vegetables', 60, 40),

('Eggs 12 pack', 'Poultry', 85, 65),
('Chicken 1kg', 'Poultry', 240, 200),
('Fish 1kg', 'Poultry', 260, 210),
('Frozen Nuggets', 'Poultry', 180, 140),
('Sausage Pack', 'Poultry', 220, 175);

-- ============================================================
-- Insert Orders
-- ============================================================
INSERT INTO orders (customer_id, order_date, payment_mode) VALUES
(1,'2025-01-02','UPI'),
(2,'2025-01-03','Card'),
(3,'2025-01-04','Cash'),
(4,'2025-01-05','UPI'),
(5,'2025-01-06','Card'),
(6,'2025-01-07','Cash'),
(7,'2025-01-08','UPI'),
(8,'2025-01-09','Card'),
(9,'2025-01-10','Cash'),
(10,'2025-01-11','UPI'),

(11,'2025-01-12','Card'),
(12,'2025-01-13','Cash'),
(13,'2025-01-14','UPI'),
(14,'2025-01-15','Card'),
(15,'2025-01-16','Cash'),
(16,'2025-01-17','UPI'),
(17,'2025-01-18','Card'),
(18,'2025-01-19','Cash'),
(19,'2025-01-20','UPI'),
(20,'2025-01-21','Card'),

(21,'2025-02-01','Cash'),
(22,'2025-02-02','UPI'),
(23,'2025-02-03','Card'),
(24,'2025-02-04','Cash'),
(25,'2025-02-05','UPI'),
(26,'2025-02-06','Card'),
(27,'2025-02-07','Cash'),
(28,'2025-02-08','UPI'),
(29,'2025-02-09','Card'),
(30,'2025-02-10','Cash'),

(31,'2025-02-11','UPI'),
(32,'2025-02-12','Card'),
(33,'2025-02-13','Cash'),
(34,'2025-02-14','UPI'),
(35,'2025-02-15','Card'),
(36,'2025-02-16','Cash'),
(37,'2025-02-17','UPI'),
(38,'2025-02-18','Card'),
(39,'2025-02-19','Cash'),
(40,'2025-02-20','UPI'),

(41,'2025-03-01','Card'),
(42,'2025-03-02','Cash'),
(43,'2025-03-03','UPI'),
(44,'2025-03-04','Card'),
(45,'2025-03-05','Cash'),
(46,'2025-03-06','UPI'),
(47,'2025-03-07','Card'),
(48,'2025-03-08','Cash'),
(49,'2025-03-09','UPI'),
(50,'2025-03-10','Card');

-- ============================================================
-- Insert Order Items
-- ============================================================
INSERT INTO order_items (order_id, product_id, quantity, discount_percent) VALUES
(1, 1, 2, 0),
(2, 6, 1, 5),
(3, 11, 3, 10),
(4, 21, 2, 0),
(5, 26, 1, 5),
(6, 31, 4, 0),
(7, 36, 2, 10),
(8, 41, 3, 0),
(9, 46, 1, 5),
(10, 2, 2, 0),

(11, 7, 3, 5),
(12, 12, 2, 0),
(13, 16, 1, 10),
(14, 22, 2, 0),
(15, 27, 3, 5),
(16, 32, 4, 0),
(17, 37, 1, 10),
(18, 42, 2, 0),
(19, 47, 3, 5),
(20, 3, 1, 0),

(21, 8, 2, 0),
(22, 13, 3, 10),
(23, 17, 1, 0),
(24, 23, 2, 5),
(25, 28, 3, 0),
(26, 33, 2, 10),
(27, 38, 1, 0),
(28, 43, 2, 5),
(29, 48, 3, 0),
(30, 4, 1, 0),

(31, 9, 2, 5),
(32, 14, 1, 0),
(33, 18, 3, 10),
(34, 24, 2, 0),
(35, 29, 1, 5),
(36, 34, 3, 0),
(37, 39, 2, 10),
(38, 44, 1, 0),
(39, 49, 2, 5),
(40, 5, 1, 0),

(41, 10, 2, 0),
(42, 15, 1, 10),
(43, 19, 2, 0),
(44, 25, 3, 5),
(45, 30, 1, 0),
(46, 35, 2, 10),
(47, 40, 1, 0),
(48, 45, 2, 5),
(49, 50, 1, 0),
(50, 20, 3, 10);-- ============================================================
-- Project: Sales Analysis SQL Project (MySQL)
-- File: data.sql
-- Author: Amar Sutar
-- Description: Insert sample data for analysis
-- ============================================================

USE sales_analysis_db;

-- ============================================================
-- Insert Customers
-- ============================================================
INSERT INTO customers (customer_name, city) VALUES
('Amar Sutar', 'Pune'),
('Rohit Patil', 'Mumbai'),
('Sneha Jadhav', 'Kolhapur'),
('Priya Shinde', 'Nashik'),
('Akshay More', 'Nagpur'),
('Aniket Desai', 'Sangli'),
('Komal Pawar', 'Satara'),
('Sanket Patil', 'Solapur'),
('Neha Kulkarni', 'Pune'),
('Swapnil Joshi', 'Mumbai'),
('Vaibhav Patil', 'Kolhapur'),
('Aditi Chavan', 'Nashik'),
('Ruturaj Mane', 'Pune'),
('Omkar Jadhav', 'Nagpur'),
('Pooja Patil', 'Sangli'),
('Kiran Shinde', 'Satara'),
('Tejas Deshmukh', 'Solapur'),
('Mayuri Sawant', 'Pune'),
('Sagar Jadhav', 'Mumbai'),
('Shubham Patil', 'Kolhapur'),
('Sonal Shinde', 'Nashik'),
('Raj Patil', 'Pune'),
('Nikita More', 'Nagpur'),
('Prathamesh Kulkarni', 'Sangli'),
('Riya Pawar', 'Satara'),
('Manish Joshi', 'Solapur'),
('Harshad Patil', 'Pune'),
('Shruti Chavan', 'Mumbai'),
('Atharva Mane', 'Kolhapur'),
('Sayali Jadhav', 'Nashik'),
('Yash Shinde', 'Pune'),
('Tanvi Patil', 'Nagpur'),
('Rohan More', 'Sangli'),
('Megha Kulkarni', 'Satara'),
('Gaurav Joshi', 'Solapur'),
('Isha Patil', 'Pune'),
('Nilesh Jadhav', 'Mumbai'),
('Aishwarya Shinde', 'Kolhapur'),
('Siddhant Patil', 'Nashik'),
('Pritam More', 'Pune'),
('Shreya Kulkarni', 'Nagpur'),
('Vishal Joshi', 'Sangli'),
('Kavya Patil', 'Satara'),
('Aditya Jadhav', 'Solapur'),
('Suhas Shinde', 'Pune'),
('Prachi Patil', 'Mumbai'),
('Ramesh More', 'Kolhapur'),
('Seema Kulkarni', 'Nashik'),
('Dhanraj Joshi', 'Nagpur'),
('Rutuja Patil', 'Pune');

-- ============================================================
-- Insert Products
-- ============================================================
INSERT INTO products (product_name, category, selling_price, cost_price) VALUES
('Milk 1L', 'Dairy', 55, 38),
('Curd 500g', 'Dairy', 45, 30),
('Paneer 200g', 'Dairy', 95, 70),
('Butter 100g', 'Dairy', 60, 42),
('Cheese Slices', 'Dairy', 120, 90),

('Bread White', 'Bakery', 40, 25),
('Bread Brown', 'Bakery', 45, 28),
('Bun Pack', 'Bakery', 35, 20),
('Cake Slice', 'Bakery', 55, 35),
('Cookies Pack', 'Bakery', 70, 45),

('Rice 1kg', 'Grocery', 80, 60),
('Wheat Flour 1kg', 'Grocery', 65, 48),
('Sugar 1kg', 'Grocery', 55, 40),
('Salt 1kg', 'Grocery', 25, 15),
('Toor Dal 1kg', 'Grocery', 140, 115),

('Tea 250g', 'Beverages', 140, 110),
('Coffee 100g', 'Beverages', 160, 125),
('Cold Drink 750ml', 'Beverages', 45, 30),
('Juice 1L', 'Beverages', 110, 80),
('Mineral Water 1L', 'Beverages', 20, 12),

('Soap', 'Personal Care', 35, 20),
('Shampoo 180ml', 'Personal Care', 130, 90),
('Toothpaste 150g', 'Personal Care', 95, 68),
('Face Wash', 'Personal Care', 150, 110),
('Body Lotion', 'Personal Care', 180, 140),

('Detergent 1kg', 'Home Care', 120, 85),
('Dishwash Liquid', 'Home Care', 95, 65),
('Floor Cleaner', 'Home Care', 150, 110),
('Toilet Cleaner', 'Home Care', 110, 75),
('Tissue Paper Pack', 'Home Care', 60, 40),

('Chips', 'Snacks', 30, 18),
('Biscuits', 'Snacks', 25, 16),
('Namkeen', 'Snacks', 50, 32),
('Chocolate', 'Snacks', 40, 25),
('Instant Noodles', 'Snacks', 55, 38),

('Apple 1kg', 'Fruits', 180, 140),
('Banana 1 dozen', 'Fruits', 60, 40),
('Orange 1kg', 'Fruits', 120, 85),
('Grapes 1kg', 'Fruits', 160, 120),
('Mango 1kg', 'Fruits', 220, 180),

('Tomato 1kg', 'Vegetables', 50, 30),
('Potato 1kg', 'Vegetables', 45, 28),
('Onion 1kg', 'Vegetables', 55, 35),
('Carrot 1kg', 'Vegetables', 70, 45),
('Capsicum 500g', 'Vegetables', 60, 40),

('Eggs 12 pack', 'Poultry', 85, 65),
('Chicken 1kg', 'Poultry', 240, 200),
('Fish 1kg', 'Poultry', 260, 210),
('Frozen Nuggets', 'Poultry', 180, 140),
('Sausage Pack', 'Poultry', 220, 175);

-- ============================================================
-- Insert Orders
-- ============================================================
INSERT INTO orders (customer_id, order_date, payment_mode) VALUES
(1,'2025-01-02','UPI'),
(2,'2025-01-03','Card'),
(3,'2025-01-04','Cash'),
(4,'2025-01-05','UPI'),
(5,'2025-01-06','Card'),
(6,'2025-01-07','Cash'),
(7,'2025-01-08','UPI'),
(8,'2025-01-09','Card'),
(9,'2025-01-10','Cash'),
(10,'2025-01-11','UPI'),

(11,'2025-01-12','Card'),
(12,'2025-01-13','Cash'),
(13,'2025-01-14','UPI'),
(14,'2025-01-15','Card'),
(15,'2025-01-16','Cash'),
(16,'2025-01-17','UPI'),
(17,'2025-01-18','Card'),
(18,'2025-01-19','Cash'),
(19,'2025-01-20','UPI'),
(20,'2025-01-21','Card'),

(21,'2025-02-01','Cash'),
(22,'2025-02-02','UPI'),
(23,'2025-02-03','Card'),
(24,'2025-02-04','Cash'),
(25,'2025-02-05','UPI'),
(26,'2025-02-06','Card'),
(27,'2025-02-07','Cash'),
(28,'2025-02-08','UPI'),
(29,'2025-02-09','Card'),
(30,'2025-02-10','Cash'),

(31,'2025-02-11','UPI'),
(32,'2025-02-12','Card'),
(33,'2025-02-13','Cash'),
(34,'2025-02-14','UPI'),
(35,'2025-02-15','Card'),
(36,'2025-02-16','Cash'),
(37,'2025-02-17','UPI'),
(38,'2025-02-18','Card'),
(39,'2025-02-19','Cash'),
(40,'2025-02-20','UPI'),

(41,'2025-03-01','Card'),
(42,'2025-03-02','Cash'),
(43,'2025-03-03','UPI'),
(44,'2025-03-04','Card'),
(45,'2025-03-05','Cash'),
(46,'2025-03-06','UPI'),
(47,'2025-03-07','Card'),
(48,'2025-03-08','Cash'),
(49,'2025-03-09','UPI'),
(50,'2025-03-10','Card');

-- ============================================================
-- Insert Order Items
-- ============================================================
INSERT INTO order_items (order_id, product_id, quantity, discount_percent) VALUES
(1, 1, 2, 0),
(2, 6, 1, 5),
(3, 11, 3, 10),
(4, 21, 2, 0),
(5, 26, 1, 5),
(6, 31, 4, 0),
(7, 36, 2, 10),
(8, 41, 3, 0),
(9, 46, 1, 5),
(10, 2, 2, 0),

(11, 7, 3, 5),
(12, 12, 2, 0),
(13, 16, 1, 10),
(14, 22, 2, 0),
(15, 27, 3, 5),
(16, 32, 4, 0),
(17, 37, 1, 10),
(18, 42, 2, 0),
(19, 47, 3, 5),
(20, 3, 1, 0),

(21, 8, 2, 0),
(22, 13, 3, 10),
(23, 17, 1, 0),
(24, 23, 2, 5),
(25, 28, 3, 0),
(26, 33, 2, 10),
(27, 38, 1, 0),
(28, 43, 2, 5),
(29, 48, 3, 0),
(30, 4, 1, 0),

(31, 9, 2, 5),
(32, 14, 1, 0),
(33, 18, 3, 10),
(34, 24, 2, 0),
(35, 29, 1, 5),
(36, 34, 3, 0),
(37, 39, 2, 10),
(38, 44, 1, 0),
(39, 49, 2, 5),
(40, 5, 1, 0),

(41, 10, 2, 0),
(42, 15, 1, 10),
(43, 19, 2, 0),
(44, 25, 3, 5),
(45, 30, 1, 0),
(46, 35, 2, 10),
(47, 40, 1, 0),
(48, 45, 2, 5),
(49, 50, 1, 0),
(50, 20, 3, 10);
