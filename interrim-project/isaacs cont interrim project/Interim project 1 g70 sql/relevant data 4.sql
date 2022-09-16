SELECT  (2022 - YearOpened) AS store_trading_duration_years
		, AVG(AnnualRevenue) AS av_an_rev 
	   
FROM [AdventureWorks2019].[Sales].[vStoreWithDemographics]
Group BY (2022 - YearOpened)
ORDER BY av_an_rev ASC
