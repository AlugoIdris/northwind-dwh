WITH source as (
    SELECT * FROM {{source('northwind', 'orders_status')}}
)
SELECT * FROM source