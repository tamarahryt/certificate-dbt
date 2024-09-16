{{ config(
    tags=["cameco"]
    ) 
}}

select
brand,
'W52' as flag,
{% for i in range(6) %} 
sum(case when month <= {{ i+1 }} {% if not loop.last %} {% endif %} then amount end) as amount_{{ i+1 }},
{% endfor %}
sum(amount) as total_amount
from {{ ref('cameco_example') }}
group by 1