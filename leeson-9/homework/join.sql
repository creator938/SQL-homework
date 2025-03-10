SELECT e.EmployeeName, e.Salary, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.Salary > 5000;

SELECT c.CustomerName, o.OrderDate, o.OrderID
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE YEAR(o.OrderDate) = 2023;

SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
LEFT OUTER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT s.SupplierName, p.ProductName
FROM Products p
RIGHT OUTER JOIN Suppliers s ON p.SupplierID = s.SupplierID;

SELECT o.OrderID, o.OrderDate, p.PaymentID, p.PaymentDate
FROM Orders o
FULL OUTER JOIN Payments p ON o.OrderID = p.OrderID;

SELECT e1.EmployeeName AS Employee, e2.EmployeeName AS Manager
FROM Employees e1
LEFT JOIN Employees e2 ON e1.ManagerID = e2.EmployeeID;

SELECT p.ProductName, s.SalesAmount
FROM Products p
INNER JOIN Sales s ON p.ProductID = s.ProductID
WHERE s.SalesAmount > 100;

SELECT s.StudentName, c.CourseName
FROM Students s
INNER JOIN Courses c ON s.CourseID = c.CourseID
WHERE c.CourseName = 'Math 101';

SELECT c.CustomerName
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
HAVING COUNT(o.OrderID) > 3;

SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
LEFT OUTER JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'HR';

select * from Employees e join Departments d 
on e.DepartmentID=d.DepartmentID 
where d.DepartmentID in (select DepartmentID from Employees
group by DepartmentID
having count(EmployeeID) >10)
select * from Products p left outer join Sales s
on p.ProductID = s.ProductID
where s.ProductID is null
select * from Customers c right outer join Orders o 
on c.DepartmentID=o.OrderID
where o.OrderID is not null 
SELECT *
    FROM Employees e
    FULL OUTER JOIN Departments d ON e.DepartmentID = d.DepartmentID
    WHERE d.DepartmentID IS NULL
    SELECT e1.EmployeeName AS Employee1, e2.EmployeeName AS Employee2, e1.ManagerID
    FROM Employees e1
    INNER JOIN Employees e2 ON e1.ManagerID = e2.ManagerID
    WHERE e1.EmployeeID <> e2.EmployeeID;

    SELECT Orders.*, Customers.*
    FROM Orders
    LEFT OUTER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
    WHERE YEAR(Orders.OrderDate) = 2022;

    SELECT Employees.*
    FROM Employees
    INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
    WHERE Departments.DepartmentName = 'Sales' AND Employees.Salary > 5000;

    SELECT Employees.*
    FROM Employees
    INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
    WHERE Departments.DepartmentName = 'IT';

    SELECT Orders.*, Payments.*
    FROM Orders
    FULL OUTER JOIN Payments ON Orders.OrderID = Payments.OrderID
    WHERE Payments.PaymentID IS NOT NULL;

    SELECT Products.*
    FROM Products
    LEFT OUTER JOIN Orders ON Products.ProductID = Orders.ProductID
    WHERE Orders.ProductID IS NULL;
SELECT e.EmployeeID, e.Name, e.Salary, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.Salary > (SELECT AVG(Salary) FROM Employees WHERE DepartmentID = e.DepartmentID);

SELECT o.OrderID, o.OrderDate, p.PaymentID
FROM Orders o
LEFT JOIN Payments p ON o.OrderID = p.OrderID
WHERE o.OrderDate < '2020-01-01' AND p.PaymentID IS NULL;
SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Products p
FULL OUTER JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE p.CategoryID IS NULL;
SELECT e1.EmployeeID, e1.Name, e1.ManagerID
FROM Employees e1
JOIN Employees e2 ON e1.ManagerID = e2.EmployeeID
WHERE e1.Salary > 5000;
SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName LIKE 'M%';
SELECT p.ProductID, p.ProductName, s.SaleAmount
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
WHERE s.SaleAmount > 1000;

SELECT s.StudentID, s.Name
FROM Students s
LEFT JOIN Courses c ON s.CourseID = c.CourseID
WHERE c.CourseName != 'Math 101' OR c.CourseID IS NULL;

SELECT o.OrderID, p.PaymentID
FROM Orders o
FULL OUTER JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentID IS NOT NULL;

SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IN ('Electronics', 'Furniture');

SELECT c.CustomerID, c.Name, COUNT(o.OrderID) AS OrderCount
FROM Customers c
CROSS JOIN Orders o
WHERE o.OrderDate BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY c.CustomerID, c.Name
HAVING COUNT(o.OrderID) > 2;
