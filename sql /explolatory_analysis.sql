SELECT 
    o.order_id,
    c.customer_city,
    o.order_status
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
LIMIT 10;

SELECT *
FROM orders
WHERE DATE_TRUNC('month', order_purchase_timestamp) = '2016-12-01';

SELECT 
    COUNT(*) AS total_orders
FROM orders
WHERE DATE_TRUNC('month', order_purchase_timestamp) = '2016-12-01';
