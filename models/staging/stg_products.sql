SELECT
    product_id,
    TRIM(product_name) AS product_name,
    category,
    subcategory,
    unit_price AS price,
    cost_price
FROM {{ source('RAW', 'products') }}
WHERE unit_price > 0