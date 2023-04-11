/****** Script for SelectTopNRows command from SSMS  ******/
DROP TABLE if EXISTS [f].[WD_Indicators]

SELECT w.[Year]
      ,w.[Country_Name]
      ,w.[Country_Code]
      ,w.[Population_male]
      ,isnull(w.[GDP_per_capita_current_US], 0) as 'GDP_per_capita_current_US'
      ,isnull(w.[GDP_current_US], 0)as 'GDP_current_US'
      ,isnull(w.[Urban_population_of_total_population], 0)  as 'Urban_population_of_total_population'
      ,isnull(w.[Urban_population_growth_annual], 0) as 'Urban_population_growth_annual'
      ,isnull(w.[Population_density_people_per_sq_km_of_land_area], 0) as 'Population_density_people_per_sq_km_of_land_area'
      ,isnull(w.[GDP_growth_annual], 0) as 'GDP_growth_annual'
      ,isnull(w.[Urban_population], 0) as 'Urban_population'
      ,isnull(w.[GDP_per_capita_growth_annual], 0) as 'GDP_per_capita_growth_annual'
      ,isnull(w.[Population_male_of_total_population], 0) as 'Population_male_of_total_population'
      ,isnull(w.[Population_total], 0) as 'Population_total'
      ,isnull(w.[Population_growth_annual], 0) as 'Population_growth_annual'
      ,isnull(w.[Population_female_of_total_population], 0) as 'Population_female_of_total_population'
      ,isnull(w.[Population_female], 0) as 'Population_female'
	  ,1 as 'Count'
 INTO [f].[WD_Indicators]
 FROM [stg].[WD_Indicators] w
	LEFT JOIN stg.Income_Group ig
	ON w.Country_Code = ig.Country_Code
	LEFT JOIN stg.Region r
	ON w.Country_Code = r.Country_Code
	LEFT JOIN dim.Special_Notes sn
	ON w.Country_Code = sn.Country_Code


  -- 6,944