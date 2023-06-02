WITH source as (
    SELECT * FROM {{source('northwind', 'shippers')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source