{{ config(materialized='view') }}

select 
        ORDER_ID        as order_id,
        PRODUCT_ID      as product_id,
        QUANTITY        as quantity
FROM {{ source('raw','RAW_ORDER_ITEMS')}}