WITH source as (
    SELECT * FROM {{source('northwind', 'orders_tax_status')}}
)
SELECT * FROM source