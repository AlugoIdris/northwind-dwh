WITH source as (
    SELECT * FROM {{source('northwind', 'inventory_transactions')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source