### the name of the table will be account
{{ config(
    alias='account',
    tags=["tag1","stg"]
    ) 
}}

select *
, current_date( '{{ var("my_timezone") }}' ) as cur_date
, COALESCE(data_value,'{{ var("default_null") }}') as data_value_not_null
from {{ source('dbt_thrytsyk', 'DP_PATTERN_ANALYSIS_DATA_IA1') }} 
limit 10