{{ config(
    pre_hook=[
      "{{ get_start_run_date(abc) }}"
    ]
    ,
      materialized='incremental'
    , unique_key='id'
) }}

select * 
from {{ ref("stg_customers") }} c 
LEFT JOIN {{ ref("agg_orders") }} o
ON o.customer=c.id
