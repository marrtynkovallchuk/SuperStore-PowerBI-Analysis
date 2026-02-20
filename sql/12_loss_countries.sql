-- Loss-making countries analysis
-- Identifies countries where total profit is non-positive

SELECT
    country,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
GROUP BY country
HAVING SUM(profit) <= 0
ORDER BY profit_margin ASC;
