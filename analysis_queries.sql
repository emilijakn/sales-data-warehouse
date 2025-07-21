-- ANALYSIS QUERIES FOR DATA DEVELOPER PROJECT
-- Author: Emilija
-- Date: 2025-07

USE master;
GO

-- 1. Ukupna prodaja po proizvodu
SELECT 
    p.product_name,
    SUM(f.quantity) AS total_quantity_sold,
    SUM(f.total_amount) AS total_sales_amount
FROM SalesSchema.fact_sales f
JOIN SalesSchema.dim_products p 
    ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales_amount DESC;
GO

-- 2. Ukupna prodaja po kupcu
SELECT 
    c.customer_name,
    SUM(f.quantity) AS total_quantity_bought,
    SUM(f.total_amount) AS total_spent
FROM SalesSchema.fact_sales f
JOIN SalesSchema.dim_customers c 
    ON f.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
GO

-- 3. Ukupna prodaja po godini i mesecu
SELECT 
    d.year,
    d.month,
    SUM(f.total_amount) AS monthly_sales
FROM SalesSchema.fact_sales f
JOIN SalesSchema.dim_date d 
    ON f.sale_date = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;
GO

-- 4. Broj različitih kupaca po gradu
SELECT 
    c.city,
    COUNT(DISTINCT c.customer_id) AS customer_count
FROM SalesSchema.dim_customers c
GROUP BY c.city
ORDER BY customer_count DESC;
GO

-- 5. Top 5 proizvoda po količini
SELECT TOP 5
    p.product_name,
    SUM(f.quantity) AS total_quantity_sold
FROM SalesSchema.fact_sales f
JOIN SalesSchema.dim_products p 
    ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;
GO

-- 6. Prosečna vrednost porudžbine po kupcu
SELECT 
    c.customer_name,
    AVG(f.total_amount) AS avg_order_value
FROM SalesSchema.fact_sales f
JOIN SalesSchema.dim_customers c 
    ON f.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY avg_order_value DESC;
GO

-- 7. Ukupna prodaja po kategoriji proizvoda
SELECT 
    p.category,
    SUM(f.total_amount) AS total_sales
FROM SalesSchema.fact_sales f
JOIN SalesSchema.dim_products p 
    ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;
GO
