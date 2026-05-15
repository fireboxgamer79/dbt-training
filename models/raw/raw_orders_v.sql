
{{ config(materialized='table', transient = 'false') }}

with raw_orders as 
(
    select * from {{ source("raw_1", "raw_orders") }}
)

select 
id,
user_id,
order_date,
status
from raw_orders
