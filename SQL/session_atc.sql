SELECT
session_id,
COUNT(*) AS add_to_cart_events
FROM `level-footing-481113-s9.ecommerce_funnel.cart_events` 
WHERE
action = "add_to_cart"
GROUP BY 
session_id
