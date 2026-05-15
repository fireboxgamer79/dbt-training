{{ config(materialized='incremental', unique_key='order_id') }}

with 
stg_orders as ( select * from {{ ref('stg_orders') }}),

stg_payments as (select * from {{ ref('stg_payments')}})

select
    order_id,
    customer_id,
    order_date,
    status,
    sum(amount) as total_amount
from stg_orders
left join stg_payments
group by 1,2,3,4

{% if is_incremental() %}
where order_date > (select max(order_date) from {{ this }})
{% endif %}