create database HomeworkDB
use HomeworkDB
create table Students (StudentID int, FullName varchar(50), Age int, GPA decimal (3,2))
Alter table Students 
add Email varchar(50) 
sp_rename 'Students.FullName', 'Name', 'COLUMN'
Alter table Students 
drop column Age

truncate table Students 
Select @@SERVERNAME
Select GETDATE()
Select * from Students
