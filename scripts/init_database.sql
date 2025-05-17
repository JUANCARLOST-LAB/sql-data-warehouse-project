/*
====================================================
Create Database and Schema
====================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver' and 'gold'.

WARNING!
    Running the script will drop the entire 'DataWarehouse' Database in case it already existed.
    All data within the database will be lost. Proceed with caution and be sure this is the
    action you want to perform.
*/

-- Create Database 'DataWareHouse'

USE master;
GO

-- Drop and recreate DataWarehouse database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK INMEDIATE;
    DROP DATABASE DataWarehouse
END;
GO

-- Create the DataWarehouse database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO;

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO