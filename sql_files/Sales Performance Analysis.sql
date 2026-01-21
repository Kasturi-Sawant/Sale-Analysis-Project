-- A) Total Orders
SELECT 
    COUNT(*) order_id
FROM
    orders;

-- B) Total Customers
select count(*) Customer_id
from customers;

-- C) Total Products
select count(*) product_id
from products;

-- D) Total Quantity Sold
select sum(quantity) as Total_Quantity_Sold
from order_items;

-- E) Total Revenue (After Discount)
select round(sum((p.selling_price*oi.quantity)*(1-oi.discount_percent/100)),2) as total_revenue_before
from order_items oi
join products p on oi.product_id=p.product_id;

-- F) Total Revenue (Before Discount)
select round(sum(p.selling_price*oi.quantity),2) as total_Revenue_aftr
from order_items oi
inner join products p on p.product_id = oi.product_id;

-- G) Total Discount Amount
select round(sum(s.selling_price*q.quantity)
- sum((s.selling_price*q.quantity)*(1-q.discount_percent/100)),2) as total_discount_amount
from order_items q
join products s on q.product_id=s.product_id;

select round(sum(selling_price*quantity)
- sum((selling_price*quantity)*(1-discount_percent/100)),2) as total_discount_amount
from order_items quantity
join products selling_price on quantity.product_id=selling_price.product_id;

-- H) Total Profit (After Discount)
-- Profit = (Selling Price - Cost Price) * Quantity *(after discount)
 SELECT 
    ROUND(
        SUM(((s.selling_price - s.cost_price) * q.quantity) * (1 - q.discount_percent/100)),
    2) AS total_profit_after_discount
FROM order_items q
JOIN products s 
ON q.product_id = s.product_id;


-- I) Average Order Value (AOV)
SELECT
    ROUND(
        SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)) / COUNT(DISTINCT o.order_id),
    2) AS avg_order_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;




