SELECT e.Name AS EmployeeName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT s.StudentName, c.ClassName
FROM Students s
LEFT JOIN Classes c ON s.ClassID = c.ClassID;

SELECT cu.CustomerName, o.OrderDate
FROM Orders o
RIGHT JOIN Customers cu ON o.CustomerID = cu.CustomerID;

SELECT p.ProductName, s.Quantity
FROM Products p
FULL OUTER JOIN Sales s ON p.ProductID = s.ProductID;

SELECT e1.Name AS EmployeeName, e2.Name AS ManagerName
FROM Employees e1
LEFT JOIN Employees e2 ON e1.ManagerID = e2.EmployeeID;

SELECT c.ColorName, s.SizeName
FROM Colors c
CROSS JOIN Sizes s;

SELECT m.Title, a.Name AS ActorName
FROM Movies m
INNER JOIN Actors a ON m.MovieID = a.MovieID
WHERE m.ReleaseYear > 2015;

SELECT o.OrderDate, cu.CustomerName, od.ProductID
FROM Orders o
INNER JOIN Customers cu ON o.CustomerID = cu.CustomerID
INNER JOIN OrderDetails od ON o.OrderID = od.OrderID;

SELECT p.ProductName, SUM(s.Quantity * p.Price) AS TotalRevenue
FROM Sales s
INNER JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName;
