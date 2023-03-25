USE EconomicTransformationDB;
GO

ALTER TABLE [f].[EconomicTD]
DROP CONSTRAINT if exists FK_Country
GO

ALTER TABLE [f].[EconomicTD]
DROP CONSTRAINT if exists FK_Variables
GO

ALTER TABLE [f].[EconomicTD]
DROP CONSTRAINT if exists FK_WarFlag
GO

