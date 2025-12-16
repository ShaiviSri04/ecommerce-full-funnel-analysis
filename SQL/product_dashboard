SELECT
p.product_id,
p.views,
p.atc,
p.high_view_flag,
p.high_atc_flag,
IFNULL(r.product_revenue,0) AS product_revenue,
IFNULL(r.orders_with_product,0) AS order_with_product
FROM `level-footing-481113-s9.ecommerce_funnel.product_performace` AS p    
LEFT JOIN `level-footing-481113-s9.ecommerce_funnel.product_revenue` AS r   
ON p.product_id=r.product_id
