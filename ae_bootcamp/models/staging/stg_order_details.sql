WITH source as (
    SELECT * FROM {{source('northwind', 'order_details')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source