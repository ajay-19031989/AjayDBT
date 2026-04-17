
{{config(materialized='view')}}

with customer_stg as
(
select c_customer_id,
c_first_name,
c_last_name,
c_birth_country 
from {{ source('raw_data','CUSTOMER') }}
)
select * from customer_stg