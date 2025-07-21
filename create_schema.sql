USE master;
GO

-- Proverava da li već postoji šema SalesSchema
IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'SalesSchema'
)
BEGIN
    -- Kreira novu šemu SalesSchema
    EXEC('CREATE SCHEMA SalesSchema');
END
GO
