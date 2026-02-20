-- Category performance analysis
-- Shows sales, profit, and profit margin by category

SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
GROUP BY category
ORDER BY total_sales DESC;
