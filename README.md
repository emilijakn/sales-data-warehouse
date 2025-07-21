📊 Sales Data Warehouse Project

👤 Author: Emilija Knežević
🗓️ Date: July 2025
🔗 Technologies: SQL Server, Power BI, CSV
📝 Project Overview

This project is a demonstration of my skills as a Junior Data Developer, showcasing my understanding of:

    Data warehouse design and implementation

    ETL (Extract, Transform, Load) processes

    Writing analytical SQL queries

    Creating dashboards in Power BI

The goal was to build a simple sales data warehouse using a star schema, populate it with data from CSV files, and produce useful insights via SQL and visualization.
🗄️ Data Model

The data warehouse consists of a star schema with the following tables:

✅ dim_customers — customer information
✅ dim_products — product details
✅ dim_date — calendar date dimension
✅ fact_sales — sales transactions (fact table)

These tables are implemented in the SQL Server schema: SalesSchema.
📂 Files in this repository
File	Description
create_schema.sql	Creates the SalesSchema in SQL Server
create_tables.sql	Creates all dimension and fact tables
import_data.sql	Imports data from CSV files into the tables
analysis_queries.sql	Sample SQL queries for data analysis
customers.csv	Customer data
products.csv	Product data
sales.csv	Sales transactions
🧪 How to use

1️⃣ Run create_schema.sql in SQL Server to create the schema
2️⃣ Run create_tables.sql to create the tables
3️⃣ Make sure CSV files are saved in the correct folder and paths in import_data.sql are correct
4️⃣ Run import_data.sql to load data into the tables
5️⃣ Run analysis_queries.sql to get insights into sales data
📊 Power BI Dashboard

After loading the data, connect Power BI Desktop to your SQL Server instance and load the SalesSchema tables.
Build visuals such as:

    Sales by product

    Sales by customer

    Trends over time

    Detailed transactions table

🗣️ Why this project?

This project demonstrates my ability to:
✅ Design and implement a data warehouse
✅ Write clean and meaningful SQL queries
✅ Work with ETL processes
✅ Visualize data for business insights

📫 Feel free to contact me for more details or to discuss improvements.
