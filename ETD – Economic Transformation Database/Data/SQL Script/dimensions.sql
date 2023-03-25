USE EconomicTransformationDB;
GO

SELECT ROW_NUMBER() OVER(ORDER BY VAR ASC) as 'VAR_Id'
		,[VAR] as 'VAR'
		,CASE
			WHEN [VAR] = 'VA' THEN 'Gross value added at current basic prices (millions, local currency)'
			WHEN [VAR] = 'VA_Q15' THEN 'Gross value added at constant 2015 prices (millions, local currency)'
			WHEN [VAR] = 'EMP' THEN 'Number of persons engaged (thousands)'
		END as 'Variables'
  FROM [stg].[EconomicTD]
  GROUP BY [VAR]
  ORDER BY 1 ASC
; -- Rows 3

--------------------------------------------------------------------------------------------------------------------

SELECT ROW_NUMBER() OVER(ORDER BY War_flag ASC) as 'WFlag_Id'
		,[War_flag] as 'War_flag'
		,CASE
			WHEN War_flag = 0 THEN 'No War'
			WHEN War_flag = 1 THEN 'War'
		END as 'WarDescription'
  FROM [stg].[EconomicTD]
  GROUP BY [War_flag]
  ORDER BY 1 ASC
; -- Rows 2

--------------------------------------------------------------------------------------------------------------------

SELECT ROW_NUMBER() OVER(ORDER BY country ASC) as 'CountryId'
		,country as 'CountryName'
		,Cuntry  as 'CountryCode'
		,CASE
			WHEN country IN ('Bangladesh', 'Cambodia', 'China', 'India', 'Indonesia', 'Laos', 
								'Malaysia', 'Myanmar', 'Nepal', 'Pakistan', 'Philippines', 'Sri Lanka', 'Thailand', 'Viet Nam')  THEN 'Developing Asia'
			WHEN country IN ('Hong Kong', 'Israel', 'Japan', 'Republic of Korea', 'Singapore', 'Chinese Taipei')  THEN 'Advanced Asia'
			WHEN country IN ('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Costa Rica','Ecuador', 'Mexico', 'Peru')  THEN 'Latin America'
			WHEN country IN ('Egypt', 'Morocco', 'Tunisia', 'Turkey')  THEN 'Middle East and North Africa'
			WHEN country IN ('Botswana', 'Burkina Faso', 'Cameroon', 'Ethiopia', 'Ghana', 'Kenya', 'Lesotho', 'Malawi', 'Mauritius', 
								'Mozambique', 'Namibia', 'Nigeria', 'Rwanda', 'Senegal', 'South Africa', 'Tanzania', 'Uganda', 'Zambia')  THEN 'Middle East and North Africa'
		END as 'CountryCoverage'
  FROM [stg].[ETD_2021]
  GROUP BY country, Cuntry
  ORDER BY 1 ASC
; -- Rows 51




