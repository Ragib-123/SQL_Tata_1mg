# 📊 Tata 1mg – Sales & Delivery Data Analysis Using SQL

## 📌 Project Overview

This project focuses on analyzing sales, customer orders, product performance, and delivery efficiency using **MySQL**.

The objective is to extract meaningful business insights from relational datasets using SQL queries, joins, aggregate functions, subqueries, and Common Table Expressions (CTEs).

The project demonstrates how SQL can be used to solve real-world business problems and support data-driven decision-making.

## 🎯 Project Objectives

- Analyze city-wise order distribution.
- Calculate each city's percentage contribution to total orders.
- Identify Express orders delivered after 60 minutes.
- Calculate sales using product quantity and unit price.
- Analyze sales trends across different time periods.
- Compare year-over-year (YoY) sales growth.
- Practice advanced SQL queries for business analysis.

## 🛠️ Tools & Technologies

- **Database:** MySQL
- **IDE:** MySQL Workbench
- **Language:** SQL

## 🗂️ Database Tables

The project database contains the following tables:

| Table Name | Description |
|---|---|
| cities | City information |
| customers | Customer details |
| orders | Order information |
| order_items | Individual order items and sales values |
| products | Product information |
| consultations | Consultation records |
| lab_bookings | Laboratory booking records |
| lab_tests | Laboratory test information |
| phlebotomists | Phlebotomist information |

## 📈 Key Analysis Performed

### 1. City-Wise Order Analysis
- Count total orders from each city.
- Calculate percentage contribution to total orders.
- Identify cities with the highest number of orders.

### 2. Express Delivery Performance
- Calculate delivery time using `TIMESTAMPDIFF()`.
- Identify Express orders taking more than 60 minutes.
- Calculate the percentage of late Express deliveries city-wise.

### 3. Sales Analysis
- Calculate sales using quantity multiplied by unit price.
- Combine city, customer, order, and order-item information.
- Aggregate sales data for business analysis.

### 4. Year-over-Year Sales Comparison
- Compare sales between September–October 2026 and September–October 2025.
- Explore sales trends for fever and cold-related products.
- Calculate YoY sales growth.

## 💡 SQL Concepts Used

- SELECT and WHERE
- INNER JOIN
- GROUP BY and ORDER BY
- Aggregate Functions (COUNT, SUM, AVG)
- Subqueries
- Common Table Expressions (CTEs)
- CASE Statements
- Percentage Calculations
- TIMESTAMPDIFF()
- ROUND() and CONCAT()
- Date-Based Analysis

## 📂 Project Structure

```text
Tata-1mg-SQL-Analysis/
│
├── README.md
│
├── SQL_Queries/
│   └── analysis_queries.sql
│
└── Screenshots/
    ├── sql_queries.png
    └── query_results.png
```

## 🚀 How to Run This Project

1. Install MySQL Server and MySQL Workbench.
2. Open MySQL Workbench.
3. Connect to your MySQL database.
4. Import or create the required database and tables.
5. Open the SQL query file.
6. Execute the queries to perform the analysis.
7. Review the results in the Result Grid.

## 📚 Key Learnings

Through this project, I improved my understanding of:

- Writing SQL queries for business problems.
- Working with multiple relational tables.
- Calculating business performance metrics.
- Analyzing delivery efficiency.
- Using CTEs and subqueries to simplify complex queries.
- Extracting meaningful insights from structured data.

## 👨‍💻 Author

**Ragib Ahsan**

Aspiring Data Analyst | SQL | Python | Excel | Power BI

- GitHub: [Your GitHub Profile](https://github.com/)
- LinkedIn: [Your LinkedIn Profile](https://www.linkedin.com/)

---

⭐ If you find this project useful, feel free to explore and share your feedback!

