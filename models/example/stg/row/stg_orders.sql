{{ config(
    tags=["tag2","stg"]
    ) 
}}

select *, current_date( '{{ var("my_timezone") }}' ) as cur_date
from {{ source('raw_nikita', 'raw_orders') }} 
limit 10


