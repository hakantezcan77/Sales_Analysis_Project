
SELECT TOP 5 ProductID, SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore
GROUP BY ProductID
ORDER BY TotalSales DESC;


SELECT TOP 5 ProductID, SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY ProductID
ORDER BY TotalProfit DESC;


SELECT Region, SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Region;


SELECT FORMAT(OrderDate, 'yyyy-MM') AS [Month], SUM(Sales) AS MonthlySales
FROM dbo.SampleSuperstore
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY [Month];
