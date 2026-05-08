-- ============================================================
-- Query 5: Peak Shopping Hours
-- Author : Yasser Ramzy
-- Purpose: Identify when customers place orders throughout
--          the day to optimize marketing and operations
-- ============================================================

SELECT
    HOUR(order_purchase_timestamp)      AS hour_of_day,
    COUNT(DISTINCT order_id)            AS total_orders,
    ROUND(SUM(order_total_value), 2)    AS total_revenue,
    ROUND(AVG(order_total_value), 2)    AS avg_order_value,
    ROUND(AVG(review_score), 2)         AS avg_review
FROM master_orders
GROUP BY hour_of_day
ORDER BY hour_of_day;