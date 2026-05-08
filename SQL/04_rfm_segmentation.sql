-- ============================================================
-- Query 4: RFM Customer Segmentation
-- Author : Yasser Ramzy
-- Purpose: Segment customers into actionable groups based on
--          Recency, Frequency, and Monetary scores
-- ============================================================

WITH rfm_base AS (
    SELECT
        customer_unique_id,
        DATEDIFF('2018-09-01', MAX(order_purchase_timestamp)) AS recency,
        COUNT(DISTINCT order_id)                               AS frequency,
        ROUND(SUM(order_total_value), 2)                       AS monetary
    FROM master_orders
    GROUP BY customer_unique_id
),
rfm_scored AS (
    SELECT *,
        NTILE(5) OVER (ORDER BY recency DESC)   AS r_score,
        NTILE(5) OVER (ORDER BY frequency ASC)  AS f_score,
        NTILE(5) OVER (ORDER BY monetary ASC)   AS m_score
    FROM rfm_base
),
rfm_segmented AS (
    SELECT *,
        CONCAT(r_score, f_score, m_score) AS rfm_score,
        CASE
            WHEN r_score >= 4 AND f_score >= 4 AND m_score >= 4
                THEN 'Champions'
            WHEN r_score >= 3 AND f_score >= 3
                THEN 'Loyal Customers'
            WHEN r_score >= 4 AND f_score <= 2
                THEN 'New Customers'
            WHEN r_score <= 2 AND f_score >= 3
                THEN 'At Risk'
            WHEN r_score <= 2 AND f_score <= 2 AND m_score <= 2
                THEN 'Lost'
            ELSE 'Potential Loyalists'
        END AS segment
    FROM rfm_scored
)
SELECT
    segment,
    COUNT(*)                        AS customers,
    ROUND(AVG(recency), 0)          AS avg_recency_days,
    ROUND(AVG(frequency), 2)        AS avg_frequency,
    ROUND(AVG(monetary), 2)         AS avg_monetary,
    ROUND(SUM(monetary), 2)         AS total_revenue
FROM rfm_segmented
GROUP BY segment
ORDER BY total_revenue DESC;