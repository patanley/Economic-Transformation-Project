/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Year]
      ,wdi.[Country_Code]
      ,wdi.[Country_Name]
      ,wdi.[Income_Group]
      ,wdi.[Region]
      ,wdi.[Short_Name]
      ,wdi.[Currency_Unit]
      ,wdi.[Special_Notes]
      ,wdi.[GDP_per_capita_current_US]
      ,wdi.[GDP_current_US]
      ,isnull(wdi.[GDP_growth_annual], 0) as 'GDP_growth_annual'
      ,isnull(wdi.[GDP_per_capita_growth_annual], 0) as 'GDP_per_capita_growth_annual'
  FROM [WorldDevelopmentIndicators].[dbo].[WDI] wdi
	 INNER JOIN stg.Income_Group ig
	ON wdi.Country_Code = ig.Country_Code
	INNER JOIN stg.Region r
	ON wdi.Country_Code = r.Country_Code
	INNER JOIN dim.Special_Notes sn
	ON wdi.Country_Code = sn.Country_Code

	-- 6,236 ROWS