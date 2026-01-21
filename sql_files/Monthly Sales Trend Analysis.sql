-- A) Month-wise Revenue (After Discount)
select date_format(o.order_date, '%y-%m') as month,
round(sum((p.selling_price*oi.quantity)*(1-oi.discount_percent/100)),2) 
as monthly_revenue
from orders o
join order_items oi on o.order_id=oi.order_id
join products p on p.product_id= oi.product_id
group by date_format(o.order_date, '%y-%m')
order by month;

-- B) Month-wise Total Orders
select date_format(order_date, '%y-%m') as month,
count(*) as total_order
from orders
group by date_format(order_date, '%y-%m')
order by month; 

-- C) Month-wise Revenue + Previous Month Revenue (For Growth Calculation)
SELECT 
    month,
    monthly_revenue,
    LAG(monthly_revenue) OVER (ORDER BY month) AS prev_month_revenue
FROM (
    SELECT 
        DATE_FORMAT(o.order_date, '%Y-%m') AS month,
        ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)), 2) AS monthly_revenue
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
) t
ORDER BY month;


-- D) Month-wise Revenue + Growth %
SELECT 
    month,
    monthly_revenue,
    prev_month_revenue,
    CASE 
        WHEN prev_month_revenue IS NULL THEN NULL
        WHEN prev_month_revenue = 0 THEN NULL
        ELSE ROUND(((monthly_revenue - prev_month_revenue) / prev_month_revenue) * 100, 2)
    END AS growth_percent
FROM (
    SELECT 
        month,
        monthly_revenue,
        LAG(monthly_revenue) OVER (ORDER BY month) AS prev_month_revenue
    FROM (
        SELECT 
            DATE_FORMAT(o.order_date, '%Y-%m') AS month,
            ROUND(SUM((p.selling_price * oi.quantity) * (1 - oi.discount_percent/100)), 2) AS monthly_revenue
        FROM orders o
        JOIN order_items oi ON o.order_id = oi.order_id
        JOIN products p ON oi.product_id = p.product_id
        GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
    ) m
) final
ORDER BY month;





