WITH source as (
    SELECT * FROM {{source('northwind', 'invoices')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source