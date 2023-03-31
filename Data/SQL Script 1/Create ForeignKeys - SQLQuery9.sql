USE EconomicTransformationDB;
GO



ALTER TABLE [f].[EconomicTD]
ADD CONSTRAINT FK_Country FOREIGN KEY (CountryId)
      REFERENCES [dim].[Country] (CountryId);
GO

ALTER TABLE [f].[EconomicTD]
ADD CONSTRAINT FK_Variables FOREIGN KEY (VAR_Id)
      REFERENCES [dim].[Variables](VAR_Id);
GO

ALTER TABLE [f].[EconomicTD]
ADD CONSTRAINT FK_WarFlag FOREIGN KEY (WFlag_Id)
      REFERENCES [dim].[WarFlag](WFlag_Id);
GO
