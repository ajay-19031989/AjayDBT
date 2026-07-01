{{ config(materialized='view') }}

SELECT NAME,GENDER,SALARY,BONUS,TEAM FROM {{ source('raw','EMPLOYEES') }}
