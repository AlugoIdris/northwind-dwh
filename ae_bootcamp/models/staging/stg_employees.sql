WITH source as (
    SELECT * FROM {{source('northwind', 'employees')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source