WITH source as (
    SELECT * FROM {{source('northwind', 'shippers')}}
)
SELECT * FROM source