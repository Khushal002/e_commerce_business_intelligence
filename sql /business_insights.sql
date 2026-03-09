-- Total Revenue
SELECT 
    SUM(price + freight_value) AS total_revenue
FROM order_items;

-- Monthly Revenue Trend
SELECT 
    DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
    SUM(oi.price + oi.freight_value) AS revenue
FROM orders o
JOIN order_items oi 
    ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;

-- Revenue by State
SELECT 
    c.customer_state,
    SUM(oi.price + oi.freight_value) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;

-- Average Delivery Delay
SELECT 
    AVG(order_delivered_customer_date - order_estimated_delivery_date) AS avg_delay
FROM orders
WHERE order_status = 'delivered';

-- Key Business KPIs
SELECT 
    COUNT(DISTINCT o.order_id) AS total_orders,
    COUNT(DISTINCT c.customer_unique_id) AS unique_customers,
    SUM(oi.price + oi.freight_value) AS total_revenue,
    ROUND(SUM(oi.price + oi.freight_value) 
          / COUNT(DISTINCT o.order_id), 2) AS avg_order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id;

-- Repeat Customers
SELECT 
    COUNT(*) AS repeat_customers
FROM (
    SELECT customer_unique_id
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY customer_unique_id
    HAVING COUNT(o.order_id) > 1
) t;

-- Top Product Categories
SELECT
    p.product_category_name,
    SUM(oi.price + oi.freight_value) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;

-- Average Customer Value
SELECT 
    ROUND(SUM(oi.price + oi.freight_value)
    / COUNT(DISTINCT c.customer_unique_id),2) AS avg_customer_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id;

-- Average Delivery Time
SELECT
    AVG(order_delivered_customer_date - order_purchase_timestamp) AS avg_delivery_time
FROM orders
WHERE order_status = 'delivered';

-- Late Delivery Percentage
SELECT
    COUNT(*) FILTER (
        WHERE order_delivered_customer_date > order_estimated_delivery_date
    ) * 100.0 / COUNT(*) AS late_delivery_percent
FROM orders
WHERE order_status = 'delivered';

-- Payment Method Analysis
SELECT
    payment_type,
    COUNT(*) AS transactions,
    SUM(payment_value) AS revenue
FROM order_payments
GROUP BY payment_type
ORDER BY revenue DESC;

-- Top Cities by Revenue
SELECT
    c.customer_city,
    SUM(oi.price + oi.freight_value) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_city
ORDER BY revenue DESC
LIMIT 10;

-- Shipping Cost Percentage
SELECT
    ROUND(AVG(freight_value / price * 100), 2) AS avg_shipping_percent
FROM order_items;

-- Monthly Order Volume
SELECT
    EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;
