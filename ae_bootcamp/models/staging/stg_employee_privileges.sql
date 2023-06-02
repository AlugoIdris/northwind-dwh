WITH source as (
    SELECT * FROM {{source('northwind', 'employee_privileges')}}
)
SELECT * FROM source