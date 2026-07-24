{{ config(materialized='incremental',unique_key='order_id') }}

select 
        ORDER_ID        as order_id,
        CUSTOMER_ID     as customer_id,
        ORDER_DATE      as order_date
from {{ ref('stg_orders') }} 

{% if is_incremental() %}

where order_date>
(

select max(order_date) from {{ this }}

)

{% endif %}