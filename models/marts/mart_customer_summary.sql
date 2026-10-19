{{ config(materialized='table') }}

SELECT
    customer_id,
    customer_name,
    COUNT(DISTINCT CASE WHEN order_status = 'delivered' THEN order_id END) AS total_delivered_orders,
    COUNT(DISTINCT order_id) AS total_orders
FROM {{ ref('fct_orders') }}
GROUP BY 1, 2