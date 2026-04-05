# sql-customer-orders-inner-join-project
SQL project using INNER JOIN to analyze customer orders, total spending, product demand, and country-wise sales performance.
# SQL Customer Orders Analysis (INNER JOIN Project)

## Project Overview
This SQL project analyzes customer and order data using INNER JOIN to generate business insights such as customer spending behavior, product demand, and country-wise sales performance.

The project demonstrates how multiple tables can be combined to answer real-world business questions.

## Database Structure

### Table 1: customers
Contains customer information:
- customer_id
- customer_name
- country

### Table 2: orders
Contains order transaction details:
- order_id
- customer_id
- product
- amount
- order_date
Both tables are connected using:
customer_id

## Business Questions Solved

### Basic JOIN Analysis
1. Show all customer orders with customer name
2. Show customer name and product purchased
3. Show customer name and order amount

### Intermediate Analysis
4. Total amount spent by each customer
5. Number of orders per customer
6. Total sales by country

### Advanced Analysis
7. Customer who spent the most money
8. Most purchased product
9. Country with highest sales

## SQL Skills Used

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- INNER JOIN
- GROUP BY
- ORDER BY
- COUNT()
- SUM()
- LIMIT

## Tools Used
- SQL
- GitHub

## Project File

customer_orders_analysis.sql contains all SQL queries used in this project.
