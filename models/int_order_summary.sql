{{ config(materialized='view') }}

select a.customer_id,
count(a.order_id) as total_orders,
sum(b.quantity) as total_quantity
from {{ ref('stg_orders') }} A inner join {{ ref('stg_order_items') }} B
on a.order_id=b.order_id
group by a.customer_id 