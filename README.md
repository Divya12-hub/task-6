# Task 6 — Sales Trend Analysis (MySQL)

This task demonstrates monthly sales trend analysis using SQL aggregations in MySQL.

## Steps Completed
1. Created a `salesdb` database and `orders` table with columns:
   - `order_id` (Primary Key)
   - `order_date`
   - `amount`
   - `product_id`
2. Imported sample dataset (`orders.csv`) into MySQL.
3. Validated the data for missing values and duplicates.
4. Wrote SQL queries to:
   - Calculate monthly revenue (`SUM(amount)`)
   - Calculate monthly order volume (`COUNT(DISTINCT order_id)`)
   - Identify the **top 3 months by revenue**
5. Exported results to `monthly_sales.csv` and added screenshots of query output.

## Files in this Repository
- `orders.csv` → Sample dataset
- `task6_sales_trend.sql` → SQL script (create table, insert data, queries)
- `monthly_sales.csv` → Query output
- `screenshots/` → Screenshots of results
- `README.md` → Project documentation

## How to Run
1. Import `orders.csv` into MySQL (or run `INSERT` statements from `task6_sales_trend.sql`).
2. Execute the queries in `task6_sales_trend.sql`.
3. View monthly sales trend and top 3 months by revenue.
