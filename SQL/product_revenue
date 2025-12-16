SELECT 
oi.product_id,
SUM(oi.quantity*p.price) AS product_revenue,
COUNT(DISTINCT oi.order_id) AS orders_with_product,
SUM(oi.quantity) AS total_quantity_sold
FROM `level-footing-481113-s9.ecommerce_funnel.order_items` AS oi 
JOIN 
`level-footing-481113-s9.ecommerce_funnel.products` AS p  
ON oi.product_id=p.product_id   
GROUP BY oi.product_id
