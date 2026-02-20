-- Discounted orders analysis
-- Calculates total sales, profit, and number of orders where discount > 0

SELECT
    SUM(sales) AS total_sales_with_discount,
    SUM(profit) AS total_profit_with_discount,
    COUNT(order_id) AS orders_with_discount
FROM `superstore.orders`
WHERE discount > 0;
