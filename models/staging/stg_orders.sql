SELECT
    order_id,
    customer_id,
    order_date,
    LOWER(status) AS order_status,
    shipping_fee
FROM {{ source('RAW', 'orders') }}