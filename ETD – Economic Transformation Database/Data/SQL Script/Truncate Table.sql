/****** Script for SelectTopNRows command from SSMS  ******/
USE EconomicTransformationDB;
GO

TRUNCATE TABLE [dim].[Country];
GO

TRUNCATE TABLE [dim].[Variables];
GO

TRUNCATE TABLE [dim].[WarFlag];
GO

TRUNCATE TABLE [f].[EconomicTD];
GO

TRUNCATE TABLE [dim].[Calendar];
GO