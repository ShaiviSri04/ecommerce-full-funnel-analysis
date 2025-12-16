SELECT
s.session_id,
s.customer_id,
s.device,
s.traffic_source,

IFNULL(v.product_views,0) AS product_views,
IFNULL(a.add_to_cart_events,0) AS add_to_cart_events,

IF(v.product_views>0,1,0) AS view_flag,
IF(a.add_to_cart_events>0,1,0) AS atc_flag,

IFNULL(p.purchase_amount,0) AS purchase_amount,
IF(p.purchase_amount>0,1,0) AS purchase_flag

FROM `level-footing-481113-s9.ecommerce_funnel.funnel_base` AS s 
