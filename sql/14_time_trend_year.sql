-- Yearly time trend analysis
-- Extracts year from order_date and calculates unique orders, sales, profit, and profit margin

SELECT
    EXTRACT(YEAR FROM PARSE_DATE('%d-%m-%Y', REPLACE(order_date, '/', '-'))) AS year,
    COUNT(DISTINCT order_id) AS unique_orders_count,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
GROUP BY year
ORDER BY year;
