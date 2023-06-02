WITH source as (
    SELECT * FROM {{source('northwind', 'products')}}
)
SELECT * FROM source