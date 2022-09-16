SELECT [BusinessEntityID]
      ,[Name]
      ,[AnnualSales]
      ,[AnnualRevenue]
      ,[YearOpened]    
	  ,(2022 - YearOpened) AS store_trading_duration_years
FROM [AdventureWorks2019].[Sales].[vStoreWithDemographics]
ORDER BY store_trading_duration_years DESC