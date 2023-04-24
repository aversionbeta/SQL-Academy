SELECT 	ProductID, SUM (Quantity) AS TotalVendido,
		(SELECT Price FROM Products WHERE ProductID = OD.ProductID) AS Price,
		SUM(Quantity)*(SELECT Price FROM Products WHERE ProductID = OD.ProductID) AS PQ
FROM [OrderDetails]OD
WHERE Price > 40
GROUP BY ProductID
ORDER BY PQ DESC