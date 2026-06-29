CREATE DATABASE blinkit_sales_analysis;
 USE blinkit_sales_analysis;
 SHOW TABLES;
 SELECT * FROM blinkit_orders
LIMIT 10;
SELECT * FROM blinkit_order_items
LIMIT 10;
SELECT * FROM blinkit_products
LIMIT 10;
SELECT COUNT(*) AS Total_Orders
FROM blinkit_orders;
SELECT
ROUND(SUM(order_total),2) AS Total_Revenue
FROM blinkit_orders;
SELECT
ROUND(AVG(order_total),2) AS Average_Order_Value
FROM blinkit_orders;
SELECT
delivery_status,
COUNT(*) AS Total_Orders
FROM blinkit_orders
GROUP BY delivery_status;
SELECT
payment_method,
COUNT(*) AS Orders
FROM blinkit_orders
GROUP BY payment_method
ORDER BY Orders DESC;
SELECT
order_id,
order_total
FROM blinkit_orders
ORDER BY order_total DESC
LIMIT 10;
SELECT COUNT(*) AS Total_Customers
FROM blinkit_customers;
SELECT
customer_segment,
COUNT(*) AS Customers
FROM blinkit_customers
GROUP BY customer_segment
ORDER BY Customers DESC;
SELECT
product_name,
brand,
price
FROM blinkit_products
ORDER BY price DESC
LIMIT 10;
SELECT
category,
COUNT(*) AS Total_Products
FROM blinkit_products
GROUP BY category
ORDER BY Total_Products DESC;
SELECT
category,
ROUND(AVG(price),2) AS Average_Price
FROM blinkit_products
GROUP BY category;
SELECT
p.category,
ROUND(SUM(oi.quantity * oi.unit_price),2) AS Revenue
FROM blinkit_order_items oi
JOIN blinkit_products p
ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY Revenue DESC;
SELECT
p.brand,
ROUND(SUM(oi.quantity * oi.unit_price),2) AS Revenue
FROM blinkit_order_items oi
JOIN blinkit_products p
ON oi.product_id = p.product_id
GROUP BY p.brand
ORDER BY Revenue DESC;
SELECT
p.product_name,
SUM(oi.quantity) AS Quantity_Sold
FROM blinkit_order_items oi
JOIN blinkit_products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY Quantity_Sold DESC
LIMIT 10;
SELECT
customer_id,
SUM(order_total) AS Total_Spent
FROM blinkit_orders
GROUP BY customer_id
ORDER BY Total_Spent DESC
LIMIT 10;
SELECT
ROUND(AVG(delivery_time_minutes),2) AS Average_Delivery_Time
FROM blinkit_delivery_performance;
SELECT
delivery_status,
COUNT(*) AS Orders
FROM blinkit_delivery_performance
GROUP BY delivery_status;
SELECT
reasons_if_delayed,
COUNT(*) AS Frequency
FROM blinkit_delivery_performance
WHERE reasons_if_delayed IS NOT NULL
GROUP BY reasons_if_delayed
ORDER BY Frequency DESC;
SELECT
ROUND(AVG(rating),2) AS Average_Rating
FROM blinkit_customer_feedback;
SELECT
rating,
COUNT(*) AS Total
FROM blinkit_customer_feedback
GROUP BY rating
ORDER BY rating;
SELECT
sentiment,
COUNT(*) AS Total_Feedback
FROM blinkit_customer_feedback
GROUP BY sentiment;
SELECT
channel,
ROUND(SUM(revenue_generated),2) AS Revenue
FROM blinkit_marketing_performance
GROUP BY channel
ORDER BY Revenue DESC;
SELECT
campaign_name,
ROUND(revenue_generated,2) AS Revenue
FROM blinkit_marketing_performance
ORDER BY Revenue DESC
LIMIT 10;
SELECT
campaign_name,
roas
FROM blinkit_marketing_performance
ORDER BY roas DESC
LIMIT 10;
SELECT
SUM(stock_received) AS Total_Stock_Received
FROM blinkit_inventoryNew;
SELECT
ROUND((SUM(damaged_stock) / SUM(stock_received)) * 100,2) AS Damage_Percentage
FROM blinkit_inventoryNew;
SELECT
MONTH(order_date) AS Month,
ROUND(SUM(order_total),2) AS Revenue
FROM blinkit_orders
GROUP BY MONTH(order_date)
ORDER BY Month;
SELECT
MONTH(order_date) AS Month,
COUNT(order_id) AS Orders
FROM blinkit_orders
GROUP BY MONTH(order_date)
ORDER BY Month;
SELECT
payment_method,
ROUND(AVG(order_total),2) AS Average_Order_Value
FROM blinkit_orders
GROUP BY payment_method;
SELECT
COUNT(order_id) AS Total_Orders,
ROUND(SUM(order_total),2) AS Revenue,
ROUND(AVG(order_total),2) AS Average_Order_Value,
MIN(order_total) AS Minimum_Order,
MAX(order_total) AS Maximum_Order
FROM blinkit_orders;
