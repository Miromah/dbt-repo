{{ config(materialized='table') }}

SELECT
    category,
    COUNT(DISTINCT product_id) AS product_count,
    AVG(price) AS average_product_price
FROM {{ ref('stg_products') }}
GROUP BY 1