select ProductName as Name from products 
select * from customers as clients 

select productname from products 
union
select productname from Products_Discontinued 

select * from products
intersect 
select * from Products_Discontinued 


select * from products
union all 
select * from orders

select distinct customername, country from customers

select *, 
        case 
		when price>	100 then 'HIgh'
		else 'Low'
		end as Pricecategory
		from products

SELECT Country, COUNT(*) AS EmployeeCount
FROM Employees
WHERE Department IS NOT NULL
GROUP BY Country;


SELECT ProductID, count(*) AS ProductCount
FROM Products
GROUP BY ProductID

select *,
iif(stock> 100, 'yes', 'no')
from products


select productname from products
union 
select productname from OutOfStock

select productname from products 
except 
select productname from DiscontinuedProducts

SELECT CustomerID,
  CASE 
    WHEN OrderID > 5 THEN 'Eligible'
    ELSE 'Not Eligible'
  END AS Eligibility
FROM Orders

select price, productname,
iif(price>100, 'Expensive', 'Affordable') as pricectegory
from products

SELECT CustomerID, sum(OrderID) AS OrderCount
FROM Orders
GROUP BY CustomerID

select * from Employees
where age <25 and salary > 6000

SELECT Region, SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY Region;

UPDATE Employees
SET Salary = Salary * 1.1
WHERE Department = 'HR';

SELECT ProductID, SUM(Amount) AS TotalAmount, 'Sales' AS Type FROM Sales
GROUP BY ProductID
UNION ALL
SELECT ProductID, SUM(Amount) AS TotalAmount, 'Returns' AS Type FROM Returns
GROUP BY ProductID;

SELECT ProductID FROM Products
INTERSECT
SELECT Customerid FROM orders

SELECT ProductID, TotalSales,
    CASE 
        WHEN TotalSales > 10000 THEN 'Top Tier'
        WHEN TotalSales BETWEEN 5000 AND 10000 THEN 'Mid Tier'
        ELSE 'Low Tier'
    END AS SalesTier
FROM SalesSummary;

DECLARE @EmployeeID INT
DECLARE @Salary DECIMAL(10,2)
DECLARE cur CURSOR FOR SELECT EmployeeID, Salary FROM Employees
OPEN cur
FETCH NEXT FROM cur INTO @EmployeeID, @Salary

WHILE @@FETCH_STATUS = 0
BEGIN
    IF @Salary < 5000
        UPDATE Employees SET Salary = Salary * 1.10 WHERE EmployeeID = @EmployeeID
    ELSE IF @Salary BETWEEN 5000 AND 10000
        UPDATE Employees SET Salary = Salary * 1.05 WHERE EmployeeID = @EmployeeID
    ELSE
        UPDATE Employees SET Salary = Salary * 1.02 WHERE EmployeeID = @EmployeeID

    FETCH NEXT FROM cur INTO @EmployeeID, @Salary
END
CLOSE cur
DEALLOCATE cur;

SELECT CustomerID FROM Orders
EXCEPT
SELECT CustomerID FROM Invoices;

SELECT CustomerID, ProductID, Region, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY CustomerID, ProductID, Region;

SELECT ProductID, Quantity,
    CASE 
        WHEN Quantity >= 100 THEN 0.2 -- 20% discount
        WHEN Quantity BETWEEN 50 AND 99 THEN 0.1 -- 10% discount
        ELSE 0.05 -- 5% discount
    END AS Discount
FROM Orders;

SELECT p.ProductID, p.ProductName, 'In Stock' AS Status
FROM Products p
INNER JOIN Inventory i ON p.ProductID = i.ProductID AND i.Stock > 0
UNION
SELECT dp.ProductID, dp.ProductName, 'Discontinued' AS Status
FROM DiscontinuedProducts dp
INNER JOIN Inventory i ON dp.ProductID = i.ProductID;

SELECT ProductID, Stock, IIF(Stock > 0, 'Available', 'Out of Stock') AS StockStatus
FROM Inventory;

SELECT CustomerID FROM Customers
EXCEPT
SELECT CustomerID FROM VIP_Customers;
