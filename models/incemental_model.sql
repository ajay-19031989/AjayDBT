{{ config(materialized='incremental',unique_key='ticket_number')}}

select ticket_number, state,updated_date from {{ source('ops_raw','ticket_raw') }} 

{% if is_incremental() %}
 
    where updated_date > 
    (
        select max(updated_date) from {{ this }} 
    )
{% endif %}