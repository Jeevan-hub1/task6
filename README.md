![image](https://github.com/user-attachments/assets/075b6f5e-004b-4d1a-8c31-3d719ab88c89)


# 📊 Sales Trend Analysis Using Aggregations

## 🧾 Overview

This project demonstrates how to analyze **monthly sales trends** using SQL aggregation functions. By querying an `online_sales` dataset, we extract insights such as **monthly revenue** and **order volume**, helping businesses track performance and make data-driven decisions.

---

## 🎯 Objective

* Analyze **monthly revenue** (`SUM(amount)`)
* Count **distinct orders** per month (`COUNT(DISTINCT order_id)`)
* Group data by **year and month**
* Sort and optionally filter for specific time periods

---

## 🛠️ Tools Used

* SQL (PostgreSQL / MySQL / SQLite compatible)
* SQL functions: `EXTRACT`, `SUM`, `COUNT`, `GROUP BY`, `ORDER BY`

---

## 🗃️ Dataset

**Table:** `online_sales`
**Columns:**

* `order_id` – Unique identifier for each order
* `order_date` – Date of the order
* `amount` – Order value
* `product_id` – Product identifier

---

## 📁 Project Files

| File                       | Description                                                                         |
| -------------------------- | ----------------------------------------------------------------------------------- |
| `task6.sql` | SQL script to create the table, insert sample data, and perform monthly aggregation |
| `README.md`                | Documentation for project overview, objectives, and usage                           |

---

## 📈 Sample Output

| year | month | total\_revenue | total\_orders |
| ---- | ----- | -------------- | ------------- |
| 2023 | 1     | 350.00         | 2             |
| 2023 | 2     | 550.00         | 2             |
| 2023 | 3     | 800.00         | 3             |
| 2023 | 4     | 1200.00        | 2             |
| 2023 | 5     | 650.00         | 1             |

---

## 📌 Key SQL Concepts Used

* `EXTRACT(YEAR/MONTH FROM order_date)` – Extracts year and month for grouping.
* `SUM(amount)` – Aggregates total revenue per month.
* `COUNT(DISTINCT order_id)` – Counts unique orders per month.
* `GROUP BY` and `ORDER BY` – Organizes and sorts results.
* Compatible with SQLite, PostgreSQL, and MySQL (minor syntax changes for SQLite).

---

## ✅ How to Run

1. Copy the `sales_trend_analysis.sql` into your SQL client or database CLI.
2. Execute the script.
3. Review the output for monthly trends.

*For SQLite, replace `EXTRACT` with `strftime` as explained in the SQL script.*

---

## 📬 Contact

For questions or contributions, feel free to reach out via GitHub or email.


