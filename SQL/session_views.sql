SELECT
session_id,
COUNT(*) AS product_views
FROM `level-footing-481113-s9.ecommerce_funnel.cart_events` 
WHERE action = "view"
GROUP BY session_id
