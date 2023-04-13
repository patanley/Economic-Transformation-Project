USE EconomicTransformationDB;
GO


SELECT   DISTINCT [Year] as 'Year'
		,ag.Agric_Id
		,bs.BServices_Id
		,c.Cons_Id
		,ct.CountryId
		,fs.FServices_Id
		,gs.GovServices_Id
		,mf.Manu_Id
		,m.Min_Id
		,os.OtherServices_Id
		,isnull(re.REstate_Id, 0) as REstate_Id
		,ts.TrdServices_Id
		,t.TansServices_Id
		,u.Util_Id
		,v.VAR_Id
		,w.WFlag_Id
FROM [stg].[ETD_2021] etd
		INNER JOIN dim.Agriculture ag
		ON etd.Agriculture = ag.Agriculture
		INNER JOIN dim.BusinessServ bs
		ON etd.Business_services = bs.Business_services
		INNER JOIN dim.Construction c
		ON etd.Construction = c.Construction
		INNER JOIN dim.Countries ct
		ON etd.country = ct.CountryName
		INNER JOIN dim.FinancialServ fs
		ON etd.Financial_services = fs.Financial_services
		INNER JOIN dim.GovServices gs
		ON etd.Government_services = gs.Government_services
		INNER JOIN dim.Manufacturing mf
		ON etd.Manufacturing = mf.Manufacturing
		INNER JOIN dim.Mining m
		ON etd.Mining = m.Mining
		INNER JOIN dim.OtherServices os
		ON etd.Other_services = os.Other_services
		LEFT JOIN dim.RealEstate re
		ON etd.Real_estate = re.Real_estate
		INNER JOIN dim.TradeServices ts
		ON etd.Trade_services = ts.Trade_services
		INNER JOIN dim.Transport t
		ON etd.Transport_services = t.Transport_services
		INNER JOIN dim.Utilities u
		ON etd.Utilities = u.Utilities
		INNER JOIN dim.[VAR] v
		ON etd.[VAR] = v.[VAR]
		INNER JOIN dim.WarFlag w
		ON etd.War_flag = w.War_flag
;-- Rows 4,437



