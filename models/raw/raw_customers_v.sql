
{{ config(materialized='view') }}

with raw_customers as 
(
    select * from {{ source("raw_1", "raw_customers") }}
)

select 
id, 
first_name, 
last_name
from raw_customers
