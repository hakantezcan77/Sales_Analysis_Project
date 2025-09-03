SELECT 
   Product_ID, Sales,
   ROW_NUMBER() OVER (ORDER BY Sales DESC) AS RowNum
FROM dbo.SampleSuperstore;


SELECT 
   Order_Date, Sales,
   SUM(Sales) OVER (ORDER BY OrderDate) AS RunningTotal
FROM dbo.SampleSuperstore;




SELECT 
   Category, Product_Name, SUM(Sales) AS TotalSales,
   RANK() OVER (PARTITION BY Category ORDER BY SUM(Sales) DESC) AS RankInCategory
FROM dbo.SampleSuperstore
GROUP BY Category, Product_Name;

