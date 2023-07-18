SELECT 
    id AS payment_id, 
    orderid AS order_id, 
    paymentmethod, 
    status, 
    -- amount is stored in cents 
    amount / 100 as amount, 
    created
from `dbt-tutorial`.stripe.payment