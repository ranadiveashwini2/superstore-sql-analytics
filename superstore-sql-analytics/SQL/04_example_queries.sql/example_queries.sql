-- Example SQL Queries for Data Analysis
-- Use these for interviews and your GitHub portfolio

----------------------------------------------------------
-- 1. First 10 rows of the clean table
----------------------------------------------------------

SELECT * FROM superstore_clean
LIMIT 10;


----------------------------------------------------------
-- 2. Total Sales & Profit
----------------------------------------------------------

SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_clean;


----------------------------------------------------------
-- 3. Top 10 Most Profitable Products
----------------------------------------------------------

SELECT 
    product_name,
    SUM(profit) AS total_profit
FROM superstore_clean
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;


----------------------------------------------------------
-- 4. Loss-Making Products (Negative Profit)
----------------------------------------------------------

SELECT 
    product_name,
    SUM(profit) AS total_profit
FROM superstore_clean
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;


----------------------------------------------------------
-- 5. Top 10 Customers by Profit
----------------------------------------------------------

SELECT 
    customer_name,
    SUM(profit) AS total_profit,
    SUM(sales) AS total_sales
FROM superstore_clean
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;


----------------------------------------------------------
-- 6. Discount Impact on Profit
----------------------------------------------------------

SELECT
    CASE 
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount BETWEEN 0.01 AND 0.20 THEN 'Low (1–20%)'
        WHEN discount BETWEEN 0.21 AND 0.40 THEN 'Medium (21–40%)'
        ELSE 'High (40%+)'
    END AS discount_band,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore_clean
GROUP BY discount_band
ORDER BY total_profit DESC;
