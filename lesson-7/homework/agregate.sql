select min(price) as minPrice from products
select max(salary) as maxsalary from Employees
select count(*) as numberrows from Customers
select count(distinct category) as uniquecategory from Products 
select sum(SaleAmount) as totalsales from Sales
select Avg(age) as ageofemployee from Employees
select department, count(*) as numberofemployee from employees 
group by department
select category, min(price) as minprice, max(price) as maxprice from products 
group by category
select region, sum(saleamount) as totalsale from sales 
group by region
select Department, count(*) as numberofemployee from employees 
group by Department
having	COUNT(*) > 5
select * from sales 
select productcategory, sum(Saleamount) as totalsale, avg(saleamount) as averagesale 
from sales 
group by productcategory
select Role, count(role) as numberofemployee 
from EmployeeProjects
group by Role
SELECT Department, MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary
FROM Employees
GROUP BY Department
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department
select department, avg(Salary) as averagesa, Count(*) as numberofemployee
from employees 
group by department
select productid, avg(price) as averageprice
from Products
group by productid 
having avg(price)>100
select count(distinct productid) as productabove
from Products
where unitsold<100
select year(saledate) as saleyear, sum(saleamount) 
from sales
group by year(saledate)
SELECT Region, COUNT(DISTINCT CustomerID) AS NumberOfCustomers
FROM Orders
GROUP BY Region
select department, sum(salary) as totalsa
from employees 
group by department
having sum(salary)>10000
SELECT ProductCategory, AVG(SalesAmount) AS AverageSales
FROM Sales
GROUP BY ProductCategory
HAVING AVG(SalesAmount) > 200;
SELECT EmployeeID, SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY EmployeeID
HAVING SUM(SalesAmount) > 5000
SELECT Department, SUM(Salary) AS TotalSalary, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 6000
SELECT CustomerID, MAX(OrderValue) AS MaxOrderValue, MIN(OrderValue) AS MinOrderValue
FROM Orders
GROUP BY CustomerID
HAVING MIN(OrderValue) >= 50
SELECT Region, SUM(SalesAmount) AS TotalSales, COUNT(DISTINCT ProductID) AS ProductsSold
FROM Sales
GROUP BY Region
HAVING COUNT(DISTINCT ProductID) > 10;
SELECT ProductCategory, ProductID, MIN(OrderQuantity) AS MinOrderQuantity, MAX(OrderQuantity) AS MaxOrderQuantity
FROM Products
GROUP BY ProductCategory, ProductID;
SELECT Region, 
       SUM(CASE WHEN YEAR(SaleDate) = 2021 THEN SalesAmount ELSE 0 END) AS Sales_2021,
       SUM(CASE WHEN YEAR(SaleDate) = 2022 THEN SalesAmount ELSE 0 END) AS Sales_2022,
       SUM(CASE WHEN YEAR(SaleDate) = 2023 THEN SalesAmount ELSE 0 END) AS Sales_2023
FROM Sales
GROUP BY Region;
SELECT SaleID, Quarter, SalesAmount
FROM Sales
UNPIVOT (SalesAmount FOR Quarter IN (Q1, Q2, Q3, Q4)) AS UnpivotedSales;
SELECT ProductCategory, ProductID, COUNT(OrderID) AS NumberOfOrders
FROM Orders
GROUP BY ProductCategory, ProductID
HAVING COUNT(OrderID) > 50;
SELECT EmployeeID, 
       SUM(CASE WHEN Quarter = 'Q1' THEN SalesAmount ELSE 0 END) AS Q1_Sales,
       SUM(CASE WHEN Quarter = 'Q2' THEN SalesAmount ELSE 0 END) AS Q2_Sales,
       SUM(CASE WHEN Quarter = 'Q3' THEN SalesAmount ELSE 0 END) AS Q3_Sales,
       SUM(CASE WHEN Quarter = 'Q4' THEN SalesAmount ELSE 0 END) AS Q4_Sales
FROM EmployeeSales
GROUP BY EmployeeID;






