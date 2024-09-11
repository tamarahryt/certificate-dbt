{{ config(
    tags=["tag1","stg"]
    ) 
}}

select *, current_date( '{{ var("my_timezone") }}' ) as cur_date
from {{ source('dbt_thrytsyk', 'DP_PATTERN_ANALYSIS_DATA_IA1') }} 
limit 10