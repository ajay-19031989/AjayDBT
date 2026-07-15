{% snapshot customer_history %}

{{ config
(
    target_schema='STAGING',
    unique_key='customer_id',
    strategy='timestamp',
    updated_at='last_updated_date'   
)
}}

select * from {{ source('raw','RAW_CUSTOMERS') }}

{% endsnapshot %}