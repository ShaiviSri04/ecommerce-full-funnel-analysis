SELECT
customer_id,
DATE_DIFF(
  (SELECT MAX(session_start) FROM `level-footing-481113-s9.ecommerce_funnel.sessions`),
  MAX(order_time),
  DAY
) AS recency_days
FROM `level-footing-481113-s9.ecommerce_funnel.orders`
GROUP BY customer_id
