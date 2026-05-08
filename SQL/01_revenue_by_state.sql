-- ============================================================
-- Query 1: Revenue & Performance by State
-- Author : Yasser Ramzy
-- Purpose: Identify which Brazilian states generate the most
--          revenue and how delivery performance varies by region
-- ============================================================

SELECT 
    customer_state,
    COUNT(DISTINCT order_id)            AS total_orders,
    ROUND(SUM(order_total_value), 2)    AS total_revenue,
    ROUND(AVG(order_total_value), 2)    AS avg_order_value,
    ROUND(AVG(review_score), 2)         AS avg_review,
    ROUND(AVG(delivery_days), 1)        AS avg_delivery_days,
    ROUND(AVG(is_late) * 100, 1)        AS late_rate_pct
FROM master_orders
GROUP BY customer_state
ORDER BY total_revenue DESC;