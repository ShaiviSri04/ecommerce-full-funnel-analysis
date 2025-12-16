SELECT
p.product_id,
p.views,
p.atc,

IF(p.views>=t.high_view,1,0) AS high_view_flag,
IF(p.atc>=t.high_atc,1,0) AS high_atc_flag

FROM `level-footing-481113-s9.ecommerce_funnel.product_engagement` AS p 
CROSS JOIN 
`level-footing-481113-s9.ecommerce_funnel.product_thresholds` AS t
