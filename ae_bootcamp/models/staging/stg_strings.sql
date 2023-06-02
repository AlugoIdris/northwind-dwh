WITH source as (
    SELECT * FROM {{source('northwind', 'strings')}}
)
SELECT * FROM source