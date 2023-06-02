WITH source as (
    SELECT * FROM {{source('northwind', 'customer')}}
)
SELECT * FROM source