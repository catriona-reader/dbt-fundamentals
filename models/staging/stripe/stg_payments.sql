with 

source as (

    select * from {{ source('stripe', 'payment') }}

),

staged as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod,
        status,
        {{cents_to_dollars('amount')}} as amount,
        created,
        _batched_at

    from source

)

select * from staged
