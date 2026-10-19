{{ config(materialized='table') }}

SELECT
    o.order_id,
    o.customer_id,
    c.customer_name,
    c.city,
    c.state,
    o.order_date,
    o.order_status,
    o.shipping_fee
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_customers') }} c ON o.customer_id = c.customer_id