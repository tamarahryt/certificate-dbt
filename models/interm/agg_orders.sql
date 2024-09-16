{{ config(
    tags=["agg"]
    ) 
}}

SELECT
    customer
    , count(1) as order_cnt
    , sum(subtotal) as order_amn
    , CURRENT_DATE() as curr_date 
FROM
    {{ ref("stg_orders") }} 
GROUP BY
    ALL