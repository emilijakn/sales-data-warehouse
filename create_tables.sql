USE master;
GO

CREATE TABLE SalesSchema.dim_customers (
    customer_id INT PRIMARY KEY,
    customer_name NVARCHAR(100),
    city NVARCHAR(50),
    country NVARCHAR(50)
);

CREATE TABLE SalesSchema.dim_products (
    product_id INT PRIMARY KEY,
    product_name NVARCHAR(100),
    category NVARCHAR(50),
    unit_price DECIMAL(10,2)
);

CREATE TABLE SalesSchema.dim_date (
    date_id DATE PRIMARY KEY,
    year INT,
    month INT,
    day INT
);

CREATE TABLE SalesSchema.fact_sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES SalesSchema.dim_customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES SalesSchema.dim_products(product_id),
    FOREIGN KEY (sale_date) REFERENCES SalesSchema.dim_date(date_id)
);
