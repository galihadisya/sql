--Subquery
--Subquery adalah query di dalam query
SELECT* 
FROM Item
WHERE ItemTypeID IN ('IT002', 'IT005')

SELECT* 
FROM Staff
WHERE StaffPosition IN ('Cashier', 'Supervisor')

SELECT* 
FROM Staff

SELECT StaffID
FROM Staff
WHERE StaffSalary >= 6700000

SELECT*
FROM Staff
WHERE StaffID IN (
	SELECT StaffID
	FROM Staff
	WHERE StaffSalary >= 6700000
)

--Kita bisa menggunakan subquery untuk me-return atau mengembalikan data
--yang akan kita gunakan pada query utamanya

--in
--in memungkinkan kita untuk menguji apakah value yang kita cari ada di dalam in

--exists
--exists adalah operator yang bisa kita gunakan
--untuk mengetahui apakah subquery kita mengembalikan sesuatu
SELECT*
FROM Staff
WHERE EXISTS (
	SELECT StaffID
	WHERE StaffSalary >= 6700000
)

--alias subquery
--subquery yang memiliki alias/nama lain

SELECT* FROM Item
SELECT AVG(Price) FROM Item

SELECT ItemName, Price 
FROM Item, (SELECT [Rata2] = AVG(Price) FROM Item) AS tt
WHERE Price > tt.Rata2
