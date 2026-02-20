-- Shipping performance by ship mode
-- Shows sales, profit, avg shipping cost, and profit margin per shipping mode

SELECT
    ship_mode,
    COUNT(DISTINCT order_id) AS unique_orders_count,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(shipping_cost) AS avg_shipping_cost,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
GROUP BY ship_mode
ORDER BY profit_margin DESC;
