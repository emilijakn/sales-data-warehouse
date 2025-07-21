# 📊 SALES DATA WAREHOUSE PROJECT

👤 **Author:** Emilija Knežević  
🗓️ **Date:** July 2025  
🔗 **Technologies:** SQL Server, Power BI, CSV  

---

## 📝 Project Overview

This project demonstrates my skills as a **Junior Data Developer** by showcasing my understanding of:  
- Data warehouse design and implementation  
- ETL (Extract, Transform, Load) processes  
- Writing analytical SQL queries  
- Creating dashboards in Power BI  

The goal was to build a simple **sales data warehouse** using a star schema, load data from CSV files, and provide useful insights through SQL queries and data visualization.

---

## 🗄️ Data Model

The project uses a **star schema** with the following tables:  

✅ `dim_customers` — customer information  
✅ `dim_products` — product information  
✅ `dim_date` — calendar date dimension  
✅ `fact_sales` — fact table with sales transactions  

All tables are within the SQL Server schema: `SalesSchema`.

---

## 📂 Repository Files

| File                 | Description                                  |
|----------------------|----------------------------------------------|
| `create_schema.sql`   | Creates the `SalesSchema` schema in SQL Server |
| `create_tables.sql`   | Creates dimension and fact tables             |
| `import_data.sql`     | Imports data from CSV files into the tables   |
| `analysis_queries.sql`| Sample SQL queries for data analysis          |
| `customers.csv`      | Customer data                                 |
| `products.csv`       | Product data                                  |
| `sales.csv`          | Sales transaction data                        |

---

## 🧪 How to Use

1️⃣ Run `create_schema.sql` in SQL Server to create the schema.  
2️⃣ Run `create_tables.sql` to create all tables.  
3️⃣ Check that the file paths in `import_data.sql` are correct, then run it to import the data.  
4️⃣ Run `analysis_queries.sql` to perform data analysis queries.

---

## 📊 Power BI Dashboard

- Connect Power BI Desktop to your SQL Server instance.  
- Import all tables from the `SalesSchema` schema.  
- Create the following visuals:  
  - Bar chart showing sales by product  
  - Pie chart illustrating customer share in total sales  
  - Line chart showing sales trends over time  
  - Table displaying detailed sales transactions  
- Arrange these visuals into a clean and clear dashboard.

---

## 🗣️ Why This Project?

This project demonstrates my ability to:  
✅ Design and implement a data warehouse  
✅ Manage ETL processes in SQL Server  
✅ Write efficient SQL queries for data analysis  
✅ Create insightful reports using Power BI  
✅ Document and organize my work for sharing  

---

📫 Feel free to contact me for any questions or feedback.

---

*Thank you for viewing my project!* 🚀

