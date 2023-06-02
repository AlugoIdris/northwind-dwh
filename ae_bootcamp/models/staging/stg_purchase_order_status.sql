WITH source as (
    SELECT * FROM {{source('northwind', 'purchase_order_status')}}
)
SELECT 
        *,
        current_timestamp() as ingestion_timestamp
        FROM source