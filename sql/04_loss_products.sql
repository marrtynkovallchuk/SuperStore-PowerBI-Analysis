-- Loss-making products analysis
-- Identifies products with non-positive total profit

SELECT
    product_name,
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
GROUP BY
    product_name,
    category,
    sub_category
HAVING
    SUM(profit) <= 0
ORDER BY
    total_profit ASC;
