/****** Script for SelectTopNRows command from SSMS  ******/
Drop Table if Exists [f].[Economic_Indicators]

SELECT etd.[country]
      ,[cnt]
      ,va.[var]
      ,etd.[year]
      ,wf.[War_flag]
      ,[Attribute] as 'Indicators'
      ,[Value] as 'GDP'
	  ,1 as 'Count'
INTO f.[Economic_Indicators]
  FROM [stg].[Economic_Indicators] etd
		INNER JOIN dim.Variables va
		ON etd.VAR = va.VAR
		INNER JOIN dim.Countries c
		ON etd.country = c.CountryName
		INNER JOIN dim.War_flag wf
		ON etd.War_flag = wf.War_flag


-- 57,651



