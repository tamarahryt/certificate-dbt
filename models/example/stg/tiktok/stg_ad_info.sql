{{ config(
    tags=["stg"]
    ) 
}}

select *, current_date( '{{ var("my_timezone") }}' ) as cur_date
from {{ source('marketing_linkedin', 'linkedin_company_ODS') }} 
limit 10