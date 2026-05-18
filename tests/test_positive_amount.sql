
select * from
{{ ref('raw_payments_v') }}
where amount < 0