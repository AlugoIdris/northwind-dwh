WITH source as (
    SELECT * FROM {{source('northwind', 'privileges')}}
)
SELECT * FROM source