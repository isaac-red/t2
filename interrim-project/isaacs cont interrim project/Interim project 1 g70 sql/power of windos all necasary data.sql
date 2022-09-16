/****** Script for SelectTopNRows command from SSMS  ******/
SELECT[AdventureWorks2019].[Sales].[SalesOrderDetail].[SalesOrderID]
      , [LineTotal]
	  , SUM(LineTotal) OVER
         (PARTITION BY [AdventureWorks2019].[Sales].[SalesOrderDetail].SalesOrderID )
         AS order_total 
	  , SUM(LineTotal) OVER
	  ()
         AS sum_all_orders_D
		 ,[AdventureWorks2019].[Sales].[SalesOrderHeader].[CustomerID]
		 , SUM(LineTotal) OVER
		 (PARTITION BY [AdventureWorks2019].[Sales].[SalesOrderHeader].[CustomerID])
         AS customer_total
		 ,[AdventureWorks2019].[Sales].[Customer].[StoreID]
		 , SUM(LineTotal) OVER
		 (PARTITION BY [AdventureWorks2019].[Sales].[Customer].[StoreID])
         AS store_total
		 ,[AdventureWorks2019].[Sales].[vStoreWithDemographics].[BusinessEntityID]
		 , SUM(LineTotal) OVER
		 (PARTITION BY [AdventureWorks2019].[Sales].[vStoreWithDemographics].[BusinessEntityID])
         AS be_total
		 ,[AdventureWorks2019].[Sales].[vStoreWithDemographics].[YearOpened]

FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]

LEFT JOIN [AdventureWorks2019].[Sales].[SalesOrderHeader]

ON [AdventureWorks2019].[Sales].[SalesOrderDetail].[SalesOrderID] =

   [AdventureWorks2019].[Sales].[SalesOrderHeader].[SalesOrderID]

LEFT JOIN [AdventureWorks2019].[Sales].[Customer]

ON [AdventureWorks2019].[Sales].[SalesOrderHeader].[CustomerID] =

   [AdventureWorks2019].[Sales].[Customer].[CustomerID]

LEFT JOIN [AdventureWorks2019].[Sales].[vStoreWithDemographics]

ON [AdventureWorks2019].[Sales].[Customer].[StoreID] =

   [AdventureWorks2019].[Sales].[vStoreWithDemographics].[BusinessEntityID]

     