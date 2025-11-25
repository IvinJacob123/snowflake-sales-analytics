# Snowflake Sales & Customer Analytics

This project demonstrates an end-to-end analytics workflow in Snowflake for a fictional retail/e-commerce business.

## Objectives

- Design a simple analytical data model (customers, products, sales).
- Load CSV data into Snowflake using stages and COPY commands.
- Use SQL to answer core business questions about revenue, customers, and products.
- Create reusable views for dashboards and self-service analytics.

## Tech Stack

- Snowflake (Warehouse, Database, Schema, Stages, Views)
- SQL (analytical queries, joins, aggregations)
- [Optional] Power BI / Tableau for visualization

## Business Questions

- What is the monthly revenue trend?
- Which products drive the most revenue and volume?
- Which regions perform best?
- What share of revenue comes from repeat customers vs first-time customers?

## Repository Structure

- `data/` – sample CSV files for customers, products, and sales.
- `sql/` – SQL scripts for DDL, data loading, and analytics.
- `docs/` – data model diagram and notes.

## How to Run

1. Create a Snowflake account and log in.
2. Run `sql/01_create_warehouse_db_schema.sql` in a Snowflake worksheet.
3. Create an internal stage and upload the CSV files from `data/`.
4. Run `sql/02_create_tables.sql` and `sql/04_copy_into_tables.sql`.
5. Run `sql/05_analysis_queries.sql` to reproduce the insights.
