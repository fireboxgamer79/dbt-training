  
with raw_payments_v as 
(
    select * from {{ ref('raw_payments_v') }}
)

select 
    try_to_number(id) as payment_id,
    try_to_number(order_id),
    payment_method,
    try_to_number(amount) as amount
from raw_payments_v
