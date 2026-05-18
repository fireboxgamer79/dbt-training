
with raw_payments as
(
    select * from {{ source('raw_1', 'raw_payments') }}
)

select 
*
from raw_payments