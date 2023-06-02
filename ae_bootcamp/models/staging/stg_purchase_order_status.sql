WITH source as (
    SELECT * FROM {{source('northwind', 'purchase_order_status')}}
)
SELECT * FROM source