DDL (Data Definition Language): Used to define and modify database structures. Examples: CREATE, ALTER
DML (Data Manipulation Language): Used to manipulate data within tables. Examples: INSERT, UPDATE
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);
INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'John Doe', 5000.00),
       (2, 'Jane Smith', 5500.00),
       (3, 'Mike Johnson', 6000.00);
UPDATE Employees
SET Salary = 5200.00
WHERE EmpID = 1;
DELETE FROM Employees
WHERE EmpID = 2;
DELETE: Removes rows based on condition; structure remains.

DROP: Removes entire table or database.

TRUNCATE: Removes all rows without logging individual row deletions; structure remains.
  ALTER TABLE Employees
MODIFY Name VARCHAR(100);  
ALTER TABLE Employees
ADD Department VARCHAR(50);

Purpose of TRUNCATE:

Quickly removes all rows without logging individual row deletions; structure remains intact.
  CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    EmpID INT,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID))
INSERT INTO Departments (DeptID, EmpID)
SELECT 1, EmpID FROM Employees;
UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;

TRUNCATE TABLE Employees;
VARCHAR: Stores non-Unicode characters (1 byte per character).

NVARCHAR: Stores Unicode characters (2 bytes per character
  ALTER TABLE Employees
MODIFY Salary FLOAT;
ALTER TABLE Employees
DROP COLUMN Department;
CREATE TEMPORARY TABLE TempEmployees (
    EmpID INT,
    Name VARCHAR(50)
);

INSERT INTO TempEmployees (EmpID, Name)
VALUES (1, 'Test User 1'), (2, 'Test User 2');
DROP TABLE Departments

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    CHECK (Age > 18)
);
DELETE FROM Employees
WHERE DATEDIFF(YEAR, LastSalaryUpdate, GETDATE()) >= 2;
CREATE PROCEDURE InsertEmployee
@EmpID INT, @Name VARCHAR(50), @Salary DECIMAL(10,2)
AS
BEGIN
    INSERT INTO Employees (EmpID, Name, Salary)
    VALUES (@EmpID, @Name, @Salary);
END;
SELECT * INTO Employees_Backup FROM Employees;
MERGE INTO Employees AS target
USING (SELECT EmpID, Name, Salary FROM NewEmployees) AS source
ON target.EmpID = source.EmpID
WHEN MATCHED THEN
    UPDATE SET target.Salary = source.Salary
WHEN NOT MATCHED THEN
    INSERT (EmpID, Name, Salary)
    VALUES (source.EmpID, source.Name, source.Salary);
DROP DATABASE CompanyDB;
CREATE DATABASE CompanyDB;

CASCADE DELETE: Automatically deletes child rows when parent rows are deleted.

CASCADE UPDATE: Updates child rows when parent keys are updated.
  DBCC CHECKIDENT ('Employees', RESEED, 0);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) UNIQUE
);
























