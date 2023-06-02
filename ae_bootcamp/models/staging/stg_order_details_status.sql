WITH source as (
    SELECT * FROM {{source('northwind', 'order_details_status')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source