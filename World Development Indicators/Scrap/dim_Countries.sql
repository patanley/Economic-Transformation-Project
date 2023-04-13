USE EconomicTransformationDB;
GO

SELECT ROW_NUMBER() OVER(ORDER BY country ASC) as 'CountryId'
		,country as 'CountryName'
		,Cuntry  as 'CountryCode'
  FROM [stg].[ETD_2021]
  GROUP BY country, Cuntry
  ORDER BY 1 ASC
; -- Rows 51