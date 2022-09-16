SELECT [Sales].[SalesOrderHeader].[CustomerID], SUM([LineTotal]) AS customer_ordersum

FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]

LEFT JOIN [AdventureWorks2019].[Sales].[SalesOrderHeader]

ON [AdventureWorks2019].[Sales].[SalesOrderDetail].[SalesOrderID] =

   [AdventureWorks2019].[Sales].[SalesOrderHeader].[SalesOrderID]

LEFT JOIN [AdventureWorks2019].[Sales].[Customer]

ON [AdventureWorks2019].[Sales].[SalesOrderHeader].[CustomerID] =

   [AdventureWorks2019].[Sales].[Customer].[CustomerID]

GROUP BY [AdventureWorks2019].[Sales].[SalesOrderHeader].[CustomerID]


