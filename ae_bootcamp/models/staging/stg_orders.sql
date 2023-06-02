WITH source as (
    SELECT * FROM {{source('northwind', 'orders')}}
)
SELECT * FROM source