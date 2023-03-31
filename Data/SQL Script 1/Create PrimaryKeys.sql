USE EconomicTransformationDB;
GO

ALTER TABLE [dim].[Country]
ADD CONSTRAINT PK_Country PRIMARY KEY (CountryId);
GO

ALTER TABLE [dim].[Variables]
ADD CONSTRAINT PK_Variables PRIMARY KEY (VAR_Id);
GO

ALTER TABLE [dim].[WarFlag]
ADD CONSTRAINT PK_WarFlag PRIMARY KEY (WFlag_Id);
GO