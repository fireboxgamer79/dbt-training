
with raw_customers_v as
(
    select * from {{ ref('raw_customers_v') }}
)

select
try_to_number(id) as customer_id,
first_name, 
last_name,
created_at,
updated_at
from raw_customers_v