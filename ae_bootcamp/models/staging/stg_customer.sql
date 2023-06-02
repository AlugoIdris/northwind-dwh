WITH source as (
    SELECT * FROM {{source('northwind', 'customer')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source