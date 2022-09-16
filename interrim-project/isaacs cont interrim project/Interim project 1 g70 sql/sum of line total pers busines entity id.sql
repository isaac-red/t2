SELECT [AdventureWorks2019].[Sales].[vStoreWithDemographics].[BusinessEntityID], [AdventureWorks2019].[Sales].[vStoreWithDemographics].[YearOpened],[AdventureWorks2019].[Sales].[SalesOrderDetail].[LineTotal]

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





