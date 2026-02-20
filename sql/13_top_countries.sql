-- Top 10 profitable countries
-- Returns the countries with the highest total profit

SELECT
    country,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
GROUP BY country
ORDER BY total_profit DESC
LIMIT 10;
