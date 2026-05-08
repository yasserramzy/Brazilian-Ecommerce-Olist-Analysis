-- ============================================================
-- Query 2: Top Performing Sellers
-- Author : Yasser Ramzy
-- Purpose: Rank sellers by revenue and evaluate their delivery
--          and satisfaction performance (min 50 orders)
-- ============================================================

SELECT 
    seller_id,
    seller_state,
    COUNT(DISTINCT order_id)            AS total_orders,
    ROUND(SUM(order_total_value), 2)    AS total_revenue,
    ROUND(AVG(order_total_value), 2)    AS avg_order_value,
    ROUND(AVG(review_score), 2)         AS avg_review,
    ROUND(AVG(delivery_days), 1)        AS avg_delivery_days,
    ROUND(AVG(is_late) * 100, 1)        AS late_rate_pct,
    COUNT(DISTINCT customer_state)      AS states_served
FROM master_orders
GROUP BY seller_id, seller_state
HAVING total_orders >= 50
ORDER BY total_revenue DESC
LIMIT 20;