SELECT LastName, FirstName, OrderID FROM Employees e
INNER JOIN Orders o
ON e.EmployeeID = o.EmployeeID