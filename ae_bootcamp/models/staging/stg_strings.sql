WITH source as (
    SELECT * FROM {{source('northwind', 'strings')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source