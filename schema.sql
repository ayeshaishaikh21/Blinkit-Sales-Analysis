-- ============================================================
-- Blinkit Sales Analysis Project
-- Database Schema Documentation
-- ============================================================

CREATE DATABASE IF NOT EXISTS blinkit_sales_analysis;

USE blinkit_sales_analysis;

-- ============================================================
-- Database Tables
-- ============================================================
-- ============================================================
-- Table: blinkit_orders
-- Description:
-- Stores order-level transaction details.
-- ============================================================

-- Columns:
-- order_id
-- customer_id
-- order_date
-- promised_delivery_time
-- actual_delivery_time
-- delivery_status
-- order_total
-- payment_method
-- delivery_partner_id
-- store_id
-- ============================================================
-- Table: blinkit_order_items
-- Description:
-- Stores product-level details for each order.
-- ============================================================

-- Columns:
-- order_id
-- product_id
-- quantity
-- unit_price
-- ============================================================
-- Table: blinkit_products
-- Description:
-- Stores product master information.
-- ============================================================

-- Columns:
-- product_id
-- product_name
-- category
-- brand
-- price
-- mrp
-- margin_percentage
-- shelf_life_days
-- min_stock_level
-- max_stock_level
-- ============================================================
-- Table: blinkit_customers
-- Description:
-- Stores customer information.
-- ============================================================

-- Columns:
-- customer_id
-- customer_name
-- email
-- phone
-- address
-- area
-- pincode
-- registration_date
-- customer_segment
-- total_orders
-- avg_order_value
-- ============================================================
-- Table: blinkit_delivery_performance
-- Description:
-- Stores delivery metrics.
-- ============================================================

-- Columns:
-- order_id
-- delivery_partner_id
-- promised_time
-- actual_time
-- delivery_time_minutes
-- distance_km
-- delivery_status
-- reasons_if_delayed
-- ============================================================
-- Table: blinkit_customer_feedback
-- Description:
-- Stores customer feedback and ratings.
-- ============================================================

-- Columns:
-- feedback_id
-- order_id
-- customer_id
-- rating
-- feedback_text
-- feedback_category
-- sentiment
-- feedback_date
-- ============================================================
-- Table: blinkit_inventory
-- Description:
-- Stores inventory details.
-- ============================================================

-- Columns:
-- product_id
-- warehouse_id
-- stock_available
-- reorder_level
-- last_updated
-- ============================================================
-- Table: blinkit_inventoryNew
-- Description:
-- Stores inventory movement details.
-- ============================================================

-- Columns:
-- product_id
-- date
-- stock_received
-- damaged_stock
-- ============================================================
-- Table: blinkit_marketing_performance
-- Description:
-- Stores marketing campaign performance.
-- ============================================================

-- Columns:
-- campaign_id
-- campaign_name
-- date
-- target_audience
-- channel
-- impressions
-- clicks
-- conversions
-- spend
-- revenue_generated
-- roas
-- ============================================================
-- Relationships
-- ============================================================

-- blinkit_orders.order_id
--        ↓
-- blinkit_order_items.order_id

-- blinkit_products.product_id
--        ↓
-- blinkit_order_items.product_id

-- blinkit_customers.customer_id
--        ↓
-- blinkit_orders.customer_id

-- blinkit_orders.order_id
--        ↓
-- blinkit_delivery_performance.order_id

-- blinkit_orders.order_id
--        ↓
-- blinkit_customer_feedback.order_id

