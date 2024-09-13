{{ config(
    tags=["tag2","stg"]
    ) 
}}

select *
from {{ source('raw_nikita', 'raw_customers') }} 
limit 100
