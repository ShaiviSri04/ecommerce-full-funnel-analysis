SELECT 
product_id,
COUNTIF(action="view") AS views,
COUNTIF(action="add_to_cart") AS atc
FROM
`level-footing-481113-s9.ecommerce_funnel.cart_events`
GROUP BY
product_id
