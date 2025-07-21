USE master;
GO

-- Ubacivanje podataka u dim_customers
BULK INSERT SalesSchema.dim_customers
FROM 'C:\\Users\\Emilija\\Desktop\\customers.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
GO

-- Ubacivanje podataka u dim_products
BULK INSERT SalesSchema.dim_products
FROM 'C:\\Users\\Emilija\\Desktop\\products.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
GO

-- Ubacivanje podataka u fact_sales
BULK INSERT SalesSchema.fact_sales
FROM 'C:\\Users\\Emilija\\Desktop\\sales.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
GO
