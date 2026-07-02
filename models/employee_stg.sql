{{ config(materialized='view') }}

select NAME,GENDER from {{ ref('employee_raw') }} where NAME is not null