DROP TABLE IF EXISTS superstore_clean;

CREATE TABLE superstore_clean AS
SELECT
    row_id::INT                      AS row_id,
    order_id                         AS order_id,
    TO_DATE(order_date, 'MM/DD/YYYY') AS order_date,
    TO_DATE(ship_date, 'MM/DD/YYYY')  AS ship_date,
    ship_mode                        AS ship_mode,
    customer_id                      AS customer_id,
    customer_name                    AS customer_name,
    segment                          AS segment,
    country                          AS country,
    city                             AS city,
    state                            AS state,
    postal_code                      AS postal_code,
    region                           AS region,
    product_id                       AS product_id,
    category                         AS category,
    sub_category                     AS sub_category,
    product_name                     AS product_name,
    sales::NUMERIC(12,2)             AS sales,
    quantity::INT                    AS quantity,
    discount::NUMERIC(5,2)           AS discount,
    profit::NUMERIC(12,2)            AS profit
FROM superstore_raw;
