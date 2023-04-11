/****** Script for SelectTopNRows command from SSMS  ******/

DROP TABLE if Exists stg.WD_Ind


SELECT   wdi.Year
		,wdi.Country_Code
		,wdi.Country_Name
		,wdi.Indicator_Name
		,wdi.Value
		,ig.Income_Group
		,r.Region
		,r.Short_Name
		,sn.Currency_Unit
		,isnull(sn.Special_Notes, 'N/A') as 'Special_Notes'
		,1 as 'Count'
INTO [f].[WD_Indicators]
FROM [WorldDevelopmentIndicators].[stg].[WDI] wdi
	LEFT JOIN stg.Income_Group ig
	ON wdi.Country_Code = ig.Country_Code
	LEFT JOIN stg.Region r
	ON wdi.Country_Code = r.Country_Code
	LEFT JOIN dim.Special_Notes sn
	ON wdi.Country_Code = sn.Country_Code
   -- 582,373 ROWS