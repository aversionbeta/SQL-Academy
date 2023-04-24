SELECT 	ProductID,
		Quantity,
		(SELECT ProductName FROM Products WHERE OD.ProductID = ProductID) AS NOMBRE,
		(SELECT Price FROM Products WHERE OD.ProductID = ProductID) AS PRECIO
FROM [OrderDetails] OD --You can use [] instead of AS to name the table
ORDER BY PRECIO DESC