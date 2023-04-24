-- Comentar 
SELECT SupplierID, ROUND( AVG (Price)) as AVERAGE FROM Products 
WHERE CategoryID IS NOT NULL --WHERE must be always next to the SELECT clause so the next steps only iterates on the selection
GROUP BY SupplierID 
ORDER BY AVERAGE DESC