WITH source as (
    SELECT * FROM {{source('northwind', 'invoices')}}
)
SELECT * FROM source