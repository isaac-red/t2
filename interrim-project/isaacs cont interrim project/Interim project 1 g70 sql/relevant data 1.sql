SELECT  (2022 - YearOpened) AS store_trading_duration_years
		, AVG(AnnualSales) AS av_an_sales 
	   
FROM [AdventureWorks2019].[Sales].[vStoreWithDemographics]
Group BY (2022 - YearOpened)

AnnualRevenue