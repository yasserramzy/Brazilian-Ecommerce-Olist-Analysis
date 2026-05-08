-- ============================================================
-- Query 6: Payment Behavior Analysis
-- Author : Yasser Ramzy
-- Purpose: Understand how payment type affects order value,
--          installment usage, and customer satisfaction
-- ============================================================

SELECT
    payment_type,
    COUNT(DISTINCT order_id)            AS total_orders,
    ROUND(SUM(order_total_value), 2)    AS total_revenue,
    ROUND(AVG(order_total_value), 2)    AS avg_order_value,
    ROUND(AVG(payment_installments), 1) AS avg_installments,
    ROUND(AVG(review_score), 2)         AS avg_review,
    ROUND(AVG(is_late) * 100, 1)        AS late_rate_pct
FROM master_orders
WHERE payment_type != 'not_defined'
GROUP BY payment_type
ORDER BY total_revenue DESC;