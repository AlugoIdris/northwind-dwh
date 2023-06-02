WITH source as (
    SELECT * FROM {{source('northwind', 'inventory_transactions')}}
)
SELECT * FROM source