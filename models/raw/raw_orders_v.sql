
with raw_orders as
(
    select * from {{ source('raw_1', 'raw_orders') }}
)

select 
*
from raw_orders