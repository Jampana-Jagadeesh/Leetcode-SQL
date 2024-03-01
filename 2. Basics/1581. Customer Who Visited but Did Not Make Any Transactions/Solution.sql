select v.customer_id,count(v.visit_id) AS count_no_trans from visits v
left join transactions t on t.visit_id=v.visit_id
where t.transaction_id is null
group by v.customer_id
