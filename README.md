🛒 E-Commerce Business Intelligence Analysis (PostgreSQL)
📌 Project Overview

This project analyzes an e-commerce transactional dataset using PostgreSQL to uncover insights about revenue performance, customer behavior, product demand, and delivery operations.

The goal is to demonstrate how SQL and relational databases can transform raw transactional data into meaningful business intelligence insights that support data-driven decision making.

🎯 Objectives

The main objectives of this project were:

Design a relational database schema for an e-commerce dataset

Load large transactional datasets into PostgreSQL

Perform SQL-based exploratory data analysis

Calculate key business KPIs

Extract insights about customer behavior, revenue drivers, and operational performance

🗄 Database Schema

The project uses a relational schema consisting of five main tables:

Table	Description
customers	Customer location and identification information
orders	Order status, purchase timestamps, and delivery details
order_items	Product-level transaction details including price and freight
order_payments	Payment type, installments, and payment value
products	Product category and product characteristics

The tables are connected using customer IDs and order IDs, enabling multi-table analysis.

⚙️ Methodology
1. Database Creation

A relational schema was created using PostgreSQL to store customer, order, product, and payment data.

2. Data Loading

CSV datasets were imported using the COPY command, which allows efficient bulk data loading into PostgreSQL tables.

3. Data Validation

Row counts were verified to ensure successful data import for all tables.

4. SQL Analysis

SQL queries were written to analyze:

Revenue performance

Customer purchasing behavior

Product category performance

Delivery performance

Payment patterns

Geographic sales distribution

📊 Key Business KPIs
Metric	Value
Total Orders	98,666
Unique Customers	95,420
Total Revenue	15.84M
Average Order Value	160.58

These metrics provide a high-level overview of the platform’s business performance.

🔍 Key Insights
📈 Revenue Growth

Monthly revenue analysis revealed strong growth beginning in early 2017, indicating rapid platform expansion and increasing customer adoption.

👥 Customer Behavior

Only 2,997 customers placed repeat orders, resulting in a repeat purchase rate of approximately 3%, indicating a heavy reliance on new customer acquisition.

🛍 Product Performance

A small number of product categories generate a large portion of total revenue, suggesting strong demand concentration.

💳 Payment Preferences

Credit card payments dominate the majority of transactions, indicating a strong customer preference for card-based purchases.

🚚 Delivery Performance

Most orders are delivered within estimated delivery times, although a small percentage of orders experience delays.

🌍 Geographic Sales

Major metropolitan cities contribute significantly to total platform revenue.

📦 Shipping Costs

Freight costs represent a noticeable percentage of product prices, highlighting the impact of logistics on profitability.

🧠 Business Recommendations

Based on the analysis, the following strategies could improve business performance:

Improve customer retention strategies through loyalty programs

Optimize delivery logistics to minimize late deliveries

Focus marketing on top-performing product categories

Strengthen advertising in high-revenue geographic regions

🛠 Tools & Technologies

PostgreSQL

SQL

Relational Database Design

Data Analysis

📁 Project Structure
ecommerce-sql-analysis
│
├── schema.sql
├── data_loading.sql
├── exploratory_analysis.sql
├── business_insights.sql
└── README.md
🚀 Future Improvements

Future enhancements for this project include:

Creating an interactive Tableau/Power BI dashboard

Performing customer segmentation analysis

Implementing cohort analysis for customer retention

Building a data pipeline for automated reporting
