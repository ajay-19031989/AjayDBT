{{ config(materialized='view') }}

select name,gender,salary,bonus,team from {{ source('raw','EMPLOYEES') }}
