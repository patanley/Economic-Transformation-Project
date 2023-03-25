/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct Real_estate
  FROM [dim].[RealEstate]
  WHERE Real_estate = 0

SELECT count(distinct Real_estate) as 'RowNum'
  FROM [dim].[RealEstate]
  WHERE Real_estate IS NULL

SELECT ROW_NUMBER() OVER(ORDER BY Real_estate ASC) as 'REstate_Id'
		,[Real_estate] as 'Real_estate'
  FROM [stg].[ETD_2021]
  GROUP BY [Real_estate]
  ORDER BY 1 ASC
; -- Rows 3090



  SELECT ROW_NUMBER() OVER(ORDER BY Real_estate ASC) as 'REstate_Id'
		,Isnull([Real_estate], 0) as 'Real_estate'
  FROM [stg].[ETD_2021]
  GROUP BY [Real_estate]
  ORDER BY 1 ASC
; -- Rows 3090

-----------------------------------------------
SELECT distinct Real_estate as 'REstate_Id'
		,[Real_estate] as 'Real_estate'
  FROM [stg].[ETD_2021]


DELETE FROM [stg].[ETD_2021]
WHERE Real_estate IS NULL ;






SELECT *
  FROM [dim].[RealEstate]




--------------------------------------------------------------------------
  SELECT ROW_NUMBER() OVER(ORDER BY Real_estate ASC) as 'REstate_Id'
		,Isnull([Real_estate], 0-9999) as 'Real_estate'
  FROM [stg].[ETD_2021]
  GROUP BY [Real_estate]
  ORDER BY 1 ASC