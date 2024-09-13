{% snapshot list_snap %}

{{
    config(
      unique_key='order_id',
      target_schema='snapshots', 
      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ ref('list_add') }}

{% endsnapshot %}