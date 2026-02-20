-- Discount bands analysis
-- Groups orders by discount ranges and calculates orders, sales, profit, and profit margin

SELECT
    CASE
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount > 0 AND discount <= 0.1 THEN '0-10%'
        WHEN discount > 0.1 AND discount <= 0.2 THEN '10-20%'
        WHEN discount > 0.2 AND discount <= 0.3 THEN '20-30%'
        ELSE '30%+'
    END AS discount_band,
    COUNT(order_id) AS orders_count,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SAFE_DIVIDE(SUM(profit), SUM(sales)) AS profit_margin
FROM `superstore.orders`
GROUP BY discount_band
ORDER BY discount_band;
