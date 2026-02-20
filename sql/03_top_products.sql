-- Top performing products by sales
-- Returns top 10 products with sales, profit, and profit margin

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
ORDER BY
    total_sales DESC
LIMIT 10;
