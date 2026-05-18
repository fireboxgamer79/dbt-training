--{{ config (prehook = 'insert into audit_table(modelname, user_id, timestamp) ' )}}


with raw_customers as
(
    select * from {{ source('raw_1','raw_customers') }}
)

select
id,
{{ clean_column('first_name') }} as first_name,
{{ clean_column('last_name') }} as last_name,
first_name as prev_first_name, 
last_name as prev_last_name,
created_at,
updated_at
from raw_customers
