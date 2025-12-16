SELECT 
APPROX_QUANTILES(views,100)[OFFSET(75)] AS high_view,
APPROX_QUANTILES(atc,100)[OFFSET(75)] AS high_atc
FROM
`level-footing-481113-s9.ecommerce_funnel.product_engagement`
