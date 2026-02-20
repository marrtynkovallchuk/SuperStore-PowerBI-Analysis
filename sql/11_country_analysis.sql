-- Country-level sales and profit analysis
-- Shows unique orders, total sales, profit, and profit margin per country

SELECT
    country,
    COUNT(DISTINCT order_id) AS unique_orders_count,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
GROUP BY country
ORDER BY total_sales DESC;
