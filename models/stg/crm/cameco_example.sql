{{ config(
    materialized='table'
    ) 
}}

with source_data as (

    select 1 as quater, 1 as month, 2024 as year, 'aaa' as brand, 5 as amount
    union all
    select 1 as quater, 1 as month, 2024 as year, 'bbb' as brand, 10 as amount
    union all
    select 2 as quater, 4 as month, 2024 as year, 'aaa' as brand, 15 as amount
    union all
    select 2 as quater, 4 as month, 2024 as year, 'bbb' as brand, 50 as amount
    union all
    select 1 as quater, 3 as month, 2024 as year, 'aaa' as brand, 5 as amount
    union all
    select 1 as quater, 1 as month, 2024 as year, 'bbb' as brand, 25 as amount
    union all
    select 2 as quater, 5 as month, 2024 as year, 'aaa' as brand, 5 as amount
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
