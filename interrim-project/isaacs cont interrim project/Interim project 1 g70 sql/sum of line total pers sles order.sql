SELECT [Sales].[SalesOrderHeader].[SalesOrderID], SUM([LineTotal]) AS sale_order_sum

FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]

LEFT JOIN [AdventureWorks2019].[Sales].[SalesOrderHeader]

ON [AdventureWorks2019].[Sales].[SalesOrderDetail].[SalesOrderID] =

   [AdventureWorks2019].[Sales].[SalesOrderHeader].[SalesOrderID]


GROUP BY [Sales].[SalesOrderHeader].[SalesOrderID]



