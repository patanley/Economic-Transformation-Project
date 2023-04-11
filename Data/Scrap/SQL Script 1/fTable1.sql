/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Year]
      ,[Agriculture]
      ,[Mining]
      ,[Manufacturing]
      ,[Utilities]
      ,[Construction]
      ,[Trade_services]
      ,[Transport_services]
      ,[Business_services]
      ,[Financial_services]
      ,isnull([Real_estate], -99) as 'Real_estate'
      ,[Government_services]
      ,[Other_services]
      ,[Total]
	  ,1 as 'Count'
	  ,va.VAR_Id
	  ,c.CountryId
	  ,wf.WFlag_Id
  FROM [stg].[EconomicTD] etd
		INNER JOIN dim.Variables va
		ON etd.VAR = va.VAR
		INNER JOIN dim.Country c
		ON etd.country = c.CountryName
		INNER JOIN dim.WarFlag wf
		ON etd.War_flag = wf.War_flag

-- 4,437