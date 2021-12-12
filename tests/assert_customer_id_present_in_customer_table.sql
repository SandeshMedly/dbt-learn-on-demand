select
    ord.customer_id
from {{ ref('stg_orders') }} ord
left join {{ ref('stg_customers') }} cus on ord.customer_id = cus.customer_id
where cus.customer_id is NULL