use HomeworkDB
CREATE TABLE Employees(
    ID INT,
    Name VARCHAR(50),
    Age int, Salary INT,
    department VARCHAR(50),
);
insert into Employees (ID, Name, Age, Salary, department) values (1, 'John', 34, 1200, 'Business analyst')
insert into Employees (ID, Name, Age, Salary, department) values (2, 'Ali', 18, 980, 'Adminstrator')
insert into Employees (ID, Name, Age, Salary, department) values (4, 'Asus',48, 200, 'Chieef')
insert into Employees (ID, Name, Age,Salary, department) values (5, 'Diyor',50, 1900, 'Gardener')
insert into Employees (ID, Name, Age, Salary, department) values (6, 'Jalol',89, 100, 'Data analyst')
insert into Employees (ID, Name, Age, Salary, department) values (7, 'Jack', 23, 1000, 'Finance analyst')
insert into Employees (ID, Name, Age, Salary, department) values (8, 'Bob', 38, 1290, 'It programmer')
insert into Employees (ID, Name, Age, Salary, department) values (9, 'Henry', 47, 5400, 'HR')
insert into Employees (ID, Name, Age, Salary, department) values (10, 'kevin', 34, 6000, 'Marketing')

Select * from Employees


Select top 5 * from Employees

Select top 5 * from Employees order by Salary desc

Select top 11 percent * 
from Employees order by Salary desc

Select distinct * from Employees
Select distinct salary from Employees
Select distinct Name from Employees
Select distinct department from Employees

Select * from Employees
where salary> 1000

SELECT * from Employees
where Name like 'A%'

select * from Employees
where Salary >= 5000 AND Department = 'HR'

select Name, Salary, department
from Employees
WHERE Salary >= 5000 AND Department = 'HR'

SELECT EmployeeName, ISNULL(Email, 'No Email Provided') from Employees
WHERE Email IS NULL;

create table emails 
(email1 varchar(30), alternative_email varchar(30))

insert into emails values ('bob@gmail.com', 'alex@gmail.com')
insert into emails values (null, 'apex@gmail.com')
insert into emails values ('bobby@gmail.com', null)
insert into emails values (null, 'dele@gmail.com')
insert into emails values (null, null)
 
select * from emails
Select coalesce(email1, alternative_email, 'No email found') from
emails
select * from Employees
where salary between 500 and 1000

select * from Employees
order by name desc

select * from Employees
order by Salary desc

select top 10 * from Employees 
order by Salary desc

Select coalesce(email1, alternative_email, 'No email found') from
emails

Select distinct name, Salary from Employees
Select * from Employees
where age between 30 and 40 or department='Marketing'

Select * from Employees
order by Salary desc
offset 10 rows
fetch next 10 rows only
select * from Employees
where Salary<=1000 and Id>4
order by ID asc

select * from Employees
where name like '%e%'

SELECT * FROM Employees
WHERE Department IN ('HR', 'IT', 'Finance')

select * from Employees
where salary> any (select avg(salary) from Employees)

select * from Employees
order by name asc, salary desc
