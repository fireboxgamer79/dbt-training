
with raw_orders_v as 
(
    select * from {{ ref('raw_orders_v') }}
)

select 
    try_to_number(id) as order_id,
    try_to_number(user_id) as customer_id,
    try_to_date(order_date) as order_date,
    status
from raw_orders_v
