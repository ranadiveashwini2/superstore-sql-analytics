DROP TABLE IF EXISTS superstore_analytics_region;

CREATE TABLE superstore_analytics_region AS
SELECT
    region,
    SUM(sales)   AS total_sales,
    SUM(profit)  AS total_profit,
    SUM(quantity) AS total_quantity
FROM superstore_clean
GROUP BY region;
