-- ============================================================
-- Query 3: Late Delivery Impact Analysis
-- Author : Yasser Ramzy
-- Purpose: Measure how late delivery affects revenue,
--          review scores, and payment behavior
-- ============================================================

SELECT
    is_late,
    COUNT(DISTINCT order_id)            AS total_orders,
    ROUND(SUM(order_total_value), 2)    AS total_revenue,
    ROUND(AVG(order_total_value), 2)    AS avg_order_value,
    ROUND(AVG(review_score), 2)         AS avg_review_score,
    ROUND(AVG(delivery_days), 1)        AS avg_delivery_days,
    ROUND(AVG(payment_installments), 1) AS avg_installments,
    ROUND(AVG(freight_ratio) * 100, 1)  AS avg_freight_pct
FROM master_orders
WHERE review_score > 0
GROUP BY is_late
ORDER BY is_late;