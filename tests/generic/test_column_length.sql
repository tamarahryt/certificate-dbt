{% test column_length(model, column_name) %}

     {{ config(severity = 'warn') }}
     
    select *
    from {{ model }}
    where length({{ column_name }})>100

{% endtest %}