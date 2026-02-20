-- Discount impact analysis by category and subcategory
-- Shows how discounted orders perform in terms of sales, profit, and profit margin

SELECT
    category,
    sub_category,
    COUNT(order_id) AS orders_count,
    AVG(discount) AS avg_discount,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
WHERE discount > 0
GROUP BY
    category,
    sub_category
ORDER BY
    profit_margin DESC;
