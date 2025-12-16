SELECT
customer_id,
COUNT(*) AS total_sessions
FROM `level-footing-481113-s9.ecommerce_funnel.sessions`
GROUP BY customer_id
