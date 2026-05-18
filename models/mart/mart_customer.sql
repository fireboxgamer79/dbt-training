
{{config(materialized = 'incremental', unique_key= 'customer_id') }}

with stg_customers as
(
    select * from {{ ref('stg_customers') }}
)

select 
customer_id,
first_name,
last_name,
created_at,
updated_at
from stg_customers