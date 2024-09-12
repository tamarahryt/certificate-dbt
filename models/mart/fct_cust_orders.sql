select * 
from {{ ref("stg_customers") }} c 
LEFT JOIN {{ ref("agg_orders") }} o
ON o.customer=c.id
