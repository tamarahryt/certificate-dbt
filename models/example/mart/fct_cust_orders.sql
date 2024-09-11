select * 
from {{ ref("stg_customer") }} c 
LEFT JOIN {{ ref("agg_orders") }} o
ON o.customer=c.id
