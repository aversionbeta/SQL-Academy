SELECT FirstName, LastName,
	(SELECT SUM (OD.Quantity) FROM [Orders] O, [OrderDetails] OD
	WHERE O.EmployeeID = E.EmployeeID AND OD.OrderID = O.OrderID) AS UnidadesTotales
FROM [Employees] E	
WHERE UnidadesTotales < (SELECT AVG (UnidadesTotales) FROM (
SELECT (SELECT SUM (OD.Quantity) FROM [Orders] O, [OrderDetails] OD
	WHERE O.EmployeeID = E2.EmployeeID AND OD.OrderID = O.OrderID) AS UnidadesTotales
FROM [Employees] E2	
GROUP BY E2.EmployeeID))