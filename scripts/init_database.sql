/*
**********************************************************
Create Database and Schemas
**********************************************************
Purpose:
      Create Database 'DataWarehouse' and its shemas 'bronz', 'silver', and 'gold' after checking the existence of this database first 
      it disconnects all connections with 'DataWarehouse' database then drop it
Warning:
      If you run this script it will drop then create the database so if you have any data inside this database you will lose it so be
      carfull and make your proper backups first before running this script.
*/

USE master;
GO

--Check The existence of the 'DataWarehouse' database
--after this close all connections to that database then drop it.
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
