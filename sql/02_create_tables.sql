-- Dimension: Customer
CREATE OR REPLACE TABLE dim_customer (
    customer_id    INT,
    country  STRING
);

-- Dimension: Product
CREATE OR REPLACE TABLE dim_product (
    product_id     STRING,
    product_name   STRING
);

-- Fact: Sales
CREATE OR REPLACE TABLE fact_sales (
    order_id       STRING,
    order_date     VARCHAR,
    customer_id    INT,
    product_id     STRING,
    quantity       NUMBER(10,2),
    unit_price     NUMBER(10,2)
);