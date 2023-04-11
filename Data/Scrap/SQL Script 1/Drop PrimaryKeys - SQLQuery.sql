USE EconomicTransformationDB;
GO


ALTER TABLE [dim].[Country]
DROP CONSTRAINT if exists PK_Country;
GO

ALTER TABLE [dim].[Variables]
DROP CONSTRAINT if exists PK_Variables;
GO

ALTER TABLE [dim].[WarFlag]
DROP CONSTRAINT if exists PK_WarFlag;
GO