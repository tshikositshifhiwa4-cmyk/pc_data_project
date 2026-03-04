# PC Sales SQL Analysis

## Overview

This project analyzes a **PC sales dataset** using SQL to extract business insights such as revenue performance, sales rankings, and profit margins.

The repository demonstrates practical SQL skills used in **data analytics and data engineering workflows**, including aggregations, filtering, ranking, and financial calculations.

## Project Goals

- Practice SQL querying on a transactional sales dataset
- Calculate business metrics such as revenue and profit
- Perform analytical queries using SQL window functions
- Explore patterns in product sales and payment methods

## Dataset Description

The dataset contains PC sales transactions with the following attributes:

| Column | Description |
|------|------|
| Continent | Region where sale occurred |
| Country | Country of the sale |
| Shop_Name | Retail store |
| Sales_Person_Name | Employee who made the sale |
| Department | Sales department |
| PC_Make | Brand of the computer |
| RAM_Size | Memory specification |
| Storage_Type | HDD or SSD |
| Storage_Capacity | Storage size |
| Sale_Price | Final selling price |
| Cost_Price | Original cost |
| Discount | Discount applied |
| Payment_Method | Cash, Finance, Card etc |
| Purchase_Date | Date of purchase |
| Ship_Date | Date shipped |
| Finance_Amount | Amount financed |
| Cost_of_Repairs | Repair expenses |

## Key Business Questions Answered

Examples of analysis performed in this project:

- What is the **total revenue generated**?
- Which **continent generates the highest sales**?
- Who are the **top performing salespeople**?
- What is the **average discount applied to products**?
- Which **PC brands generate the highest revenue**?
- What is the **profit margin per product category**?

## SQL Concepts Demonstrated

This project uses the following SQL concepts:

SELECT statements

Aggregate functions (SUM, COUNT, AVG)

GROUP BY

ORDER BY

Arithmetic calculations

Filtering with WHERE

Window functions (RANK())

## Tools Used

SQL Server Management Studio (SSMS)

## Future Improvements

Build a dashboard using Power BI

Create ETL pipelines for automated loading

Store dataset in a cloud data warehouse

## Data Engineering Relevance

This project simulates analytical queries often used after data is loaded into a data warehouse. It focuses on transforming raw sales data into business insights using SQL.
