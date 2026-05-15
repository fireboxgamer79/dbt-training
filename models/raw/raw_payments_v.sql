
{{ config(materialized='ephemeral') }}

with raw_payments as 
(
    select * from {{ source("raw_1", "raw_payments") }}
)

select 
id,
order_id,
payment_method,
amount
from raw_payments