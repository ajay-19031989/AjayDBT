{{ config(materialized='view') }}

    SELECT a.c_customer_id,a.c_first_name,a.c_last_name,a.c_birth_country, b.ca_state,b.ca_county
    FROM 
    {{ source('raw_data','CUSTOMER') }} AS a INNER JOIN {{ source('raw_data','CUSTOMER_ADDRESS') }} AS b
    ON a.c_customer_sk=b.ca_address_sk
    
