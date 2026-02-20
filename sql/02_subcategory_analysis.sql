-- Subcategory performance analysis
-- Breakdown of sales, profit, and profit margin by category and subcategory

SELECT
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
GROUP BY
    category,
    sub_category
ORDER BY
    category,
    total_sales DESC;
