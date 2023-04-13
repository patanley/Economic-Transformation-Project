USE EconomicTransformationDB;
GO

SELECT ROW_NUMBER() OVER(ORDER BY VAR ASC) as 'VAR_Id'
		,[VAR] as 'VAR'
  FROM [stg].[ETD_2021]
  GROUP BY [VAR]
  ORDER BY 1 ASC
; -- Rows 3

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY [Agriculture] ASC) as 'Agric_Id'
		,[Agriculture] as 'Agriculture'
  FROM [stg].[ETD_2021]
  GROUP BY [Agriculture]
  ORDER BY 1 ASC
; -- Rows 4098

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY [Mining] ASC) as 'Min_Id'
		,[Mining] as 'Mining'
  FROM [stg].[ETD_2021]
  GROUP BY [Mining]
  ORDER BY 1 ASC
; -- Rows 3044

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Manufacturing ASC) as 'Manu_Id'
		,[Manufacturing] as 'Manufacturing'
  FROM [stg].[ETD_2021]
  GROUP BY [Manufacturing]
  ORDER BY 1 ASC
; -- Rows 4016

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Utilities ASC) as 'Util_Id'
		,[Utilities] as 'Utilities'
  FROM [stg].[ETD_2021]
  GROUP BY [Utilities]
  ORDER BY 1 ASC
; -- Rows 3131

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Construction ASC) as 'Cons_Id'
		,[Construction] as 'Construction'
  FROM [stg].[ETD_2021]
  GROUP BY [Construction]
  ORDER BY 1 ASC
; -- Rows 3759

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Trade_services ASC) as 'TrdServices_Id'
		,[Trade_services] as 'Trade_services'
  FROM [stg].[ETD_2021]
  GROUP BY [Trade_services]
  ORDER BY 1 ASC
; -- Rows 4121

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Transport_services ASC) as 'TansServices_Id'
		,[Transport_services] as 'Transport_services'
  FROM [stg].[ETD_2021]
  GROUP BY [Transport_services]
  ORDER BY 1 ASC
; -- Rows 3651

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Business_services ASC) as 'BServices_Id'
		,[Business_services] as 'Business_services'
  FROM [stg].[ETD_2021]
  GROUP BY [Business_services]
  ORDER BY 1 ASC
; -- Rows 3627

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Financial_services ASC) as 'FServices_Id'
		,[Financial_services] as 'Financial_services'
  FROM [stg].[ETD_2021]
  GROUP BY [Financial_services]
  ORDER BY 1 ASC
; -- Rows 3315

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Real_estate ASC) as 'REstate_Id'
		,Isnull([Real_estate], 0) as 'Real_estate'
  FROM [stg].[ETD_2021]
  GROUP BY [Real_estate]
  ORDER BY 1 ASC
; -- Rows 3090

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Government_services ASC) as 'GovServices_Id'
		,[Government_services] as 'Government_services'
  FROM [stg].[ETD_2021]
  GROUP BY [Government_services]
  ORDER BY 1 ASC
; -- Rows 3987

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY Other_services ASC) as 'OtherServices_Id'
		,[Other_services] as 'Other_services'
  FROM [stg].[ETD_2021]
  GROUP BY [Other_services]
  ORDER BY 1 ASC
; -- Rows 3714

---------------------------------------------------------------
/*SELECT ROW_NUMBER() OVER(ORDER BY Total ASC) as 'Totals_Id'
		,[Total] as 'Total'
  FROM [stg].[ETD_2021]
  GROUP BY [Total]
  ORDER BY 1 ASC
; -- Rows 4343*/

---------------------------------------------------------------
SELECT ROW_NUMBER() OVER(ORDER BY War_flag ASC) as 'WFlag_Id'
		,[War_flag] as 'War_flag'
  FROM [stg].[ETD_2021]
  GROUP BY [War_flag]
  ORDER BY 1 ASC
; -- Rows 2

