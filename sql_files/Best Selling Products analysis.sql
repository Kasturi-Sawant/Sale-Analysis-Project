-- A) Top 10 Best Selling Products (By Quantity Sold)
SELECT 
    p.product_id,
    p.product_name,
    SUM(qa.quantity) AS total_Quantity_Sold
FROM
    order_items qa
        INNER JOIN
    products p ON qa.product_id = p.product_id
GROUP BY p.product_id , p.product_name
ORDER BY total_Quantity_Sold DESC
LIMIT 10;

-- op 10 Best Selling Products (By Revenue After Discount)
SELECT 
    p.product_id,
    p.product_name,
    ROUND(SUM((p.selling_price * q.quantity) * (1 - q.discount_percent / 100)),
            2) AS Revenue_After_Discount
FROM
    order_items q
        INNER JOIN
    products p ON q.product_id = p.product_id
GROUP BY p.product_id , p.product_name
ORDER BY Revenue_After_Discount DESC
LIMIT 10;

-- C) Top 10 Best Selling Products (By Profit After Discount)
SELECT 
    p.product_id,
    p.product_name,
    ROUND(SUM(((p.selling_price - p.cost_price) * oi.quantity) * (1 - oi.discount_percent / 100)),
            2) AS profit_after_dis
FROM
    order_items oi
        INNER JOIN
    products p ON oi.product_id = p.product_id
GROUP BY p.product_id , p.product_name
ORDER BY profit_after_dis DESC
LIMIT 10;

-- D)Category Wise Best Selling (Quantity)
SELECT 
    p.category, SUM(oi.quantity) AS total_Quantity_sold
FROM
    order_items oi
        JOIN
    products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_Quantity_sold DESC;

-- E) Category Wise Best Selling (Revenue)
SELECT 
    p.category,
    ROUND(SUM((p.selling_price * oi.quantity)), 2) AS total_Revenue
FROM
    order_items oi
        INNER JOIN
    products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_Revenue DESC;

-- F) Best Selling Product in Each Category (Advanced)
SELECT category, product_name, total_quantity_sold
FROM (
    SELECT 
        p.category,
        p.product_name,
        SUM(oi.quantity) AS total_quantity_sold,
        RANK() OVER (PARTITION BY p.category ORDER BY SUM(oi.quantity) DESC) AS rnk
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY p.category, p.product_name
) t
WHERE rnk = 1;






