SELECT
    customer_id,
    TRIM(CONCAT(first_name, ' ', last_name)) AS customer_name,
    LOWER(email) AS email,
    city,
    state,
    registration_date AS signup_date,
    loyalty_tier
FROM {{ source('RAW', 'customers') }}