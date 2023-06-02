WITH source as (
    SELECT * FROM {{source('northwind', 'suppliers')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source