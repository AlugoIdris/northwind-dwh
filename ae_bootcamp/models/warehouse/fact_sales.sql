{{
    config(
        partition_by = {
            "field": "order_date",
            "data_type": "date"
        }
    )
}}


WITH source AS (SELECT
od.order_id,
od.product_id,
o.customer_id,
o.employee_id,
o.shipper_id,
od.quantity,
od.unit_price,
od.discount,
od.status_id,
od.date_allocated,
od.purchase_order_id,
od.inventory_id,
date(o.order_date) as order_date,
o.shipped_date,
o.paid_date,
current_timestamp() as insertion_timestamp

FROM {{ref('stg_orders')}} o LEFT JOIN {{ref('stg_order_details')}} od
ON o.id = od.order_id
),
unique_source as (
    SELECT *,
            row_number() over(partition by customer_id, employee_id, order_id, product_id, shipper_id, purchase_order_id, order_date) as row_number
    FROM source
)

SELECT * 
except (row_number)
FROM unique_source
WHERE row_number = 1