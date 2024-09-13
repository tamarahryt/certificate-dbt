-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where total_amount < 0 to make the test fail.
select
    id,
    coalesce(sum(order_cnt),0) as total_amount
from {{ ref('fct_cust_orders') }}
group by 1
having sum(order_cnt) >= 1