-- Total revenue and orders
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(unit_price)        AS total_revenue
FROM fact_sales;


-- Top 10 products by revenue
SELECT
    p.product_name,
    SUM(f.unit_price) AS revenue,
    SUM(f.quantity)     AS units_sold
FROM fact_sales f
JOIN dim_product p
  ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 10;


-- Revenue by region

SELECT
    c.country,
    SUM(f.unit_price) AS revenue,
    COUNT(DISTINCT c.customer_id) AS unique_customers
FROM fact_sales f
JOIN dim_customer c
  ON f.customer_id = c.customer_id
GROUP BY c.country
ORDER BY revenue DESC;

--Repeat vs first-time customers
WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) AS order_count,
        SUM(unit_price)        AS revenue
    FROM fact_sales
    GROUP BY customer_id
)
SELECT
    CASE WHEN order_count = 1 THEN 'First-time' ELSE 'Repeat' END AS customer_type,
    COUNT(*)                         AS num_customers,
    SUM(revenue)                     AS revenue
FROM customer_orders
GROUP BY customer_type;

-- Group by year-month using string slicing
SELECT
    SUBSTR(ORDER_DATE, 1, 7) AS year_month,   -- '2010-12'
    SUM(QUANTITY * UNIT_PRICE) AS revenue
FROM FACT_SALES
GROUP BY year_month
ORDER BY year_month;

