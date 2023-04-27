CREATE VIEW Productos_Simplificados AS 
SELECT ProductID,ProductName,Price FROM Products
WHERE ProductID >20
ORDER BY ProductID DESC
