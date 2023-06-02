{{
    config (
        partition_by={
            "field": "transaction_created_date",
            "data_type": "date"
        }
    )
}}


WITH source AS (SELECT
id as inventory_id,
transaction_type,
date (transaction_created_date) as transaction_created_date,
transaction_modified_date,
product_id,
quantity,
purchase_order_id,
customer_order_id,
comments,
current_timestamp() as insertion_timestamp

FROM {{ref('stg_inventory_transactions')}} 
),
unique_source as (
    SELECT *,
            row_number() over(partition by inventory_id) as row_number
    FROM source
)

SELECT * 
except (row_number)
FROM unique_source
WHERE row_number = 1