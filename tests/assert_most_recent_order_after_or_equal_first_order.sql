with customers as (
    select * from {{ ref('dim_customers') }}
)


select * 
from customers 
where 
    most_recent_order_date < first_order_date
    and first_order_date is not null 