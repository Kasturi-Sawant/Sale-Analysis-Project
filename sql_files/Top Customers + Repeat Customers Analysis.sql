-- A) Top 10 Customers (Highest Spending - Revenue After Discount)
SELECT 
    c.customer_id,
    c.customer_name,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent / 100)),
            2) AS total_spent
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
        JOIN
    order_items oi ON o.order_id = oi.order_id
        JOIN
    products p ON oi.product_id = p.product_id
GROUP BY c.customer_id , c.customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- B) Top 10 Customers (Total Orders Count)
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id , c.customer_name
ORDER BY total_orders DESC
LIMIT 10;

-- C) Repeat Customers (Order Count > 1)
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id , c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY total_orders DESC;

-- D) New Customers (Only 1 Order)
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id , c.customer_name
HAVING COUNT(o.order_id) = 1;

-- E) Customer Wise Average Order Value (AOV)
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent / 100)),
            2) AS total_spent,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent / 100)) / COUNT(DISTINCT o.order_id),
            2) AS avg_order_value
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
        JOIN
    order_items oi ON o.order_id = oi.order_id
        JOIN
    products p ON oi.product_id = p.product_id
GROUP BY c.customer_id , c.customer_name
ORDER BY avg_order_value DESC;

-- F) City Wise Revenue (Which City Buys More)
SELECT 
    c.city,
    ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent / 100)),
            2) AS city_revenue
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
        JOIN
    order_items oi ON o.order_id = oi.order_id
        JOIN
    products p ON oi.product_id = p.product_id
GROUP BY c.city
ORDER BY city_revenue DESC;
