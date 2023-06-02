WITH source as (
    SELECT * FROM {{source('northwind', 'employees')}}
)
SELECT * FROM source