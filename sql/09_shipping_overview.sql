-- Shipping overview analysis
-- Calculates unique orders, average and total shipping cost, total sales, profit, and profit margin

SELECT
    COUNT(DISTINCT order_id) AS unique_orders_count,
    AVG(shipping_cost) AS avg_shipping_cost,
    SUM(shipping_cost) AS total_shipping_cost,
    SUM(profit) AS total_profit,
    SUM(sales) AS total_sales,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`;
