{{ config(materialized='view') }}

select 
        PRODUCT_ID              as product_id,
        TRIM(PRODUCT_NAME)      as product_name,
        TRIM(INITCAP(CATEGORY))  as category,
        PRICE                   as price 
FROM {{ source('raw','RAW_PRODUCTS')}}