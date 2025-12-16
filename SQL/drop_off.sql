SELECT
session_id,
view_flag,
atc_flag,
purchase_flag,
CASE
 WHEN view_flag=1 AND atc_flag=0 THEN 1 ELSE 0
END AS drop_after_view,
CASE
 WHEN atc_flag=1 AND purchase_flag = 0 THEN 1 ELSE 0
END AS drop_after_atc
FROM `level-footing-481113-s9.ecommerce_funnel.funnel`
