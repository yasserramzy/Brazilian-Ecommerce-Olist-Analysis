-- ============================================================
-- Query 7: Category Performance Deep Dive
-- Author : Yasser Ramzy
-- Purpose: Rank product categories by revenue and evaluate
--          their review scores, delivery speed, and freight cost
-- ============================================================

SELECT
    product_category_name_english,
    COUNT(DISTINCT order_id)            AS total_orders,
    ROUND(SUM(order_total_value), 2)    AS total_revenue,
    ROUND(AVG(order_total_value), 2)    AS avg_order_value,
    ROUND(AVG(review_score), 2)         AS avg_review,
    ROUND(AVG(delivery_days), 1)        AS avg_delivery_days,
    ROUND(AVG(is_late) * 100, 1)        AS late_rate_pct,
    ROUND(AVG(freight_ratio) * 100, 1)  AS avg_freight_pct
FROM master_orders
WHERE product_category_name_english != 'unknown'
GROUP BY product_category_name_english
HAVING total_orders >= 100
ORDER BY total_revenue DESC
LIMIT 20;