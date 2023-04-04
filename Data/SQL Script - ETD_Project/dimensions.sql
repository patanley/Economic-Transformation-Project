USE [ETD_Project];
GO

----------------------------------------------------------------------------------------------------------------
Drop table if exists dim.Variables;

SELECT [VAR] as 'VAR'
		,CASE
			WHEN [VAR] = 'VA' THEN 'Nominal_GDP (millions)'
			WHEN [VAR] = 'VA_Q15' THEN 'Real_GDP (millions)'
			WHEN [VAR] = 'EMP' THEN 'Employment (thousands)'
		END as 'Variables'
  INTO dim.Variables
  FROM [stg].[Economic_Indicators]
  GROUP BY [VAR]
  ORDER BY 1 ASC
; -- Rows 3

--------------------------------------------------------------------------------------------------------------------
Drop table if exists dim.War_flag;

SELECT [War_flag] as 'War_flag'
		,CASE
			WHEN War_flag = 0 THEN 'No War'
			WHEN War_flag = 1 THEN 'War'
		END as 'WarDescription'
  INTO dim.War_flag
  FROM [stg].[Economic_Indicators]
  GROUP BY [War_flag]
  ORDER BY 1 ASC 
; -- Rows 2

--------------------------------------------------------------------------------------------------------------------

Drop table if exists dim.Countries;

SELECT country as 'CountryName'
		,cnt  as 'CountryCode'
		,CASE
			WHEN country IN ('Bangladesh', 'Cambodia', 'China', 'India', 'Indonesia', 'Laos', 
								'Malaysia', 'Myanmar', 'Nepal', 'Pakistan', 'Philippines', 'Sri Lanka', 'Thailand', 'Vietnam')  THEN 'Developing Asia'
			WHEN country IN ('Hong Kong', 'Israel', 'Japan', 'South Korea', 'Singapore', 'Taiwan')  THEN 'Advanced Asia'
			WHEN country IN ('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Costa Rica','Ecuador', 'Mexico', 'Peru')  THEN 'Latin America'
			WHEN country IN ('Egypt', 'Morocco', 'Tunisia', 'Turkey')  THEN 'Middle East and North Africa'
			WHEN country IN ('Botswana', 'Burkina Faso', 'Cameroon', 'Ethiopia', 'Ghana', 'Kenya', 'Lesotho', 'Malawi', 'Mauritius', 
								'Mozambique', 'Namibia', 'Nigeria', 'Rwanda', 'Senegal', 'South Africa', 'United Republic of Tanzania', 'Uganda', 'Zambia')  THEN 'Sub-Saharan Africa'
		END as 'Region'
		,Public_Web_URL
INTO dim.Countries1
  FROM [stg].[Countries]
  GROUP BY country, cnt, Public_Web_URL
  ORDER BY 1 ASC
; -- Rows 51




