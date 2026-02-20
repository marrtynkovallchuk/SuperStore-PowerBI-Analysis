-- Average discount analysis
-- Calculates the average discount across all orders

SELECT
    AVG(discount) AS avg_discount
FROM `superstore.orders`;
