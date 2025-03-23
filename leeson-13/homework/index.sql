SELECT LEFT('DATABASE', 4); 
SELECT CHARINDEX('SQL', 'I love SQL Server')
SELECT REPLACE('Hello World', 'World', 'SQL')
SELECT LEN('Microsoft SQL Server')
SELECT RIGHT('Database', 3)
SELECT 
  LEN('apple') - LEN(REPLACE('apple', 'a', '')) AS AppleCount,
  LEN('banana') - LEN(REPLACE('banana', 'a', '')) AS BananaCount,
  LEN('grape') - LEN(REPLACE('grape', 'a', '')) AS GrapeCount

SELECT STUFF('abcdefg', 1, 5, '')


SELECT PARSENAME(REPLACE('SQL is powerful', ' ', '.'), 2)  
SELECT PARSENAME(REPLACE('I love databases', ' ', '.'), 2)

SELECT ROUND(15.6789, 2)

SELECT ABS(-345.67)
SELECT SUBSTRING('ABCDEFGHI', 4, 3)
SELECT STUFF('Microsoft', 1, 3, 'XXX')
SELECT CHARINDEX(' ', 'SQL Server 2025')
SELECT CONCAT('John', ', ', 'Doe')
SELECT PARSENAME(REPLACE('The database is very efficient', ' ', '.'), 3)
SELECT RIGHT('INV1234', LEN('INV1234') - PATINDEX('%[0-9]%', 'INV1234') + 1)
SELECT RIGHT('ORD5678', LEN('ORD5678') - PATINDEX('%[0-9]%', 'ORD5678') + 1)
SELECT ROUND(99.5, 0)
SELECT DATEDIFF(DAY, '2025-01-01', '2025-03-15')

SELECT DATENAME(MONTH, '2025-06-10')

SELECT DATEPART(WEEK, '2025-04-22')

SELECT RIGHT('user1@gmail.com', CHARINDEX('@', REVERSE('user1@gmail.com')) - 1)
SELECT RIGHT('admin@company.org', CHARINDEX('@', REVERSE('admin@company.org')) - 1)

SELECT LEN('experience') - CHARINDEX('e', REVERSE('experience')) + 1

SELECT FLOOR(RAND() * (500 - 100 + 1) + 100)  


SELECT FORMAT(9876543, 'N0')


SELECT LEFT(FullName, CHARINDEX(' ', FullName) - 1) FROM Customers;



SELECT REPLACE('SQL Server is great', ' ', '-')


SELECT FORMAT(42, '00000')


SELECT MAX(LEN(value)) 
FROM STRING_SPLIT('SQL is fast and efficient', ' ')

SELECT STUFF('Error: Connection failed', 1, CHARINDEX(' ', 'Error: Connection failed'), '');  

SELECT DATEDIFF(MINUTE, '08:15:00', '09:45:00')

