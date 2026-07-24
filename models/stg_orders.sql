{{ config(materialized='table') }}

select 
        ORDER_ID        as order_id,
        CUSTOMER_ID     as customer_id,
        ORDER_DATE      as order_date
FROM {{ source('raw','RAW_ORDERS')}}