{{ config(materialized='table') }}

SELECT
    CUSTOMER_ID                       AS customer_id,
    TRIM(CUSTOMER_NAME)               AS customer_name,
    LOWER(TRIM(EMAIL))                AS customer_email,
    INITCAP(TRIM(CITY))               AS customer_city,
    UPPER(TRIM(STATUS))               AS customer_status
FROM {{ source('raw','RAW_CUSTOMERS') }}