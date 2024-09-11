SELECT
    customer
    , count(1) as order_cnt
FROM
    {{ ref("stg_orders") }} 
GROUP BY
    ALL