WITH source as (
    SELECT * FROM {{source('northwind', 'order_details')}}
)
SELECT * FROM source