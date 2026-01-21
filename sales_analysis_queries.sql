-- ============================================================
-- Project: Sales Analysis SQL Project (MySQL)
-- File: sales_analysis_queries.sql
-- Author: Kasturi Sawant
-- Description: Sales performance, trends, customers & product analysis
-- ============================================================

USE sales_analysis_db;

-- ============================================================
-- 0) Quick Data Check
-- ============================================================
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

-- ============================================================
-- 1) Total Customers
-- ============================================================
SELECT 
    COUNT(*) AS total_customers
FROM customers;

-- ============================================================
-- 2) Total Products
-- ============================================================
SELECT 
    COUNT(*) AS total_products
FROM products;

-- ============================================================
-- 3) Total Orders
-- ============================================================
SELECT 
    COUNT(*) AS total_orders
FROM orders;

-- ============================================================
-- 4) Total Quantity Sold
-- ============================================================
SELECT 
    SUM(quantity) AS total_quantity_sold
FROM order_items;

-- ============================================================
-- 5) Total Revenue (After Discount)
-- Formula: selling_price * quantity * (1 - discount_percent/100)
-- ============================================================
SELECT
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)), 2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

-- ============================================================
-- 6) Monthly Revenue Trend (After Discount)
-- ============================================================
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)), 2) AS monthly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- ============================================================
-- 7) Monthly Orders Trend
-- ============================================================
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

-- ============================================================
-- 8) Payment Mode Wise Orders
-- ============================================================
SELECT
    payment_mode,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY payment_mode
ORDER BY total_orders DESC;

-- ============================================================
-- 9) Payment Mode Wise Revenue (After Discount)
-- ============================================================
SELECT
    o.payment_mode,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)), 2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.payment_mode
ORDER BY revenue DESC;

-- ============================================================
-- 10) Category Wise Revenue (After Discount)
-- ============================================================
SELECT
    p.category,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)), 2) AS category_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- ============================================================
-- 11) Top 10 Best-Selling Products (By Quantity)
-- ============================================================
SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY total_quantity_sold DESC
LIMIT 10;

-- ============================================================
-- 12) Top 10 Products by Revenue
-- ============================================================
SELECT
    p.product_id,
    p.product_name,
    p.category,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)), 2) AS product_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY product_revenue DESC
LIMIT 10;

-- ============================================================
-- 13) Top 10 Customers by Total Spend
-- ============================================================
SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)), 2) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name, c.city
ORDER BY total_spent DESC
LIMIT 10;

-- ============================================================
-- 14) Repeat Customers (Customers with more than 1 order)
-- ============================================================
SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING total_orders > 1
ORDER BY total_orders DESC;

-- ============================================================
-- 15) Average Order Value (AOV)
-- AOV = Total Revenue / Total Orders
-- ============================================================
SELECT
    ROUND(
        SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100))
        / COUNT(DISTINCT o.order_id),
    2) AS avg_order_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- ============================================================
-- 16) City Wise Orders Count
-- ============================================================
SELECT
    c.city,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_orders DESC;

-- ============================================================
-- 17) City Wise Revenue
-- ============================================================
SELECT
    c.city,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)), 2) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.city
ORDER BY total_revenue DESC;

-- ============================================================
-- 18) Discount Analysis (How many orders have discount?)
-- ============================================================
SELECT
    CASE 
        WHEN discount_percent = 0 THEN 'No Discount'
        ELSE 'Discount Applied'
    END AS discount_type,
    COUNT(*) AS total_items
FROM order_items
GROUP BY discount_type;

-- ============================================================
-- 19) Highest Discounted Items (Top 10)
-- ============================================================
SELECT
    oi.order_id,
    p.product_name,
    oi.quantity,
    oi.discount_percent
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
ORDER BY oi.discount_percent DESC
LIMIT 10;
