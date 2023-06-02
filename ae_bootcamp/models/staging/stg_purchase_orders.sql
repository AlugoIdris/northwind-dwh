WITH source as (
    SELECT * FROM {{source('northwind', 'purchase_orders')}}
)
SELECT * FROM source