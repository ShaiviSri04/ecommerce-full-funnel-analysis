SELECT
customer_id,
SUM(total_amount) AS purchase_amount
FROM `level-footing-481113-s9.ecommerce_funnel.orders`
GROUP BY customer_id
