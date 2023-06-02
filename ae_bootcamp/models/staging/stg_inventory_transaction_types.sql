WITH source as (
    SELECT * FROM {{source('northwind', 'inventory_transaction_types')}}
)
SELECT * FROM source