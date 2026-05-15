
with raw_customers_v as 
(
    select * from {{ ref('raw_customers_v') }}
)

select 
    id as customer_id,
    first_name,
    last_name
from raw_customers_v
