--Latihan

--1
SELECT* FROM Customer
SELECT* FROM HeaderSellTransaction

--SELECT CustomerName	
--FROM Customer cs, HeaderSellTransaction hst
--WHERE cs.CustomerID = hst.CustomerID AND 
--DATENAME(DAY, TransactionDate) = 21
--SUBSTRING (CustomerName, 1, (CHARINDEX(' ', CustomerName)-1)) salah

--jawaban nomor 1
BEGIN TRAN
UPDATE Customer
SET CustomerName = LEFT(CustomerName, CHARINDEX(' ', CustomerName)-1)
FROM Customer cs, HeaderSellTransaction hst
WHERE cs.CustomerID = hst.CustomerID AND
DATENAME(DAY, TransactionDate) = 21
ROLLBACK

--2
BEGIN TRAN
--UPDATE HeaderSellTransaction
--SET PaymentType = 'Hutang'
--WHERE CustomerID = 'CU001' ini jawaban ku kurang tepat, karena harus join
--ROLLBACK

--jawaban yg benar
BEGIN TRAN
UPDATE HeaderSellTransaction
SET PaymentType ='Hutang'
FROM Customer cs, HeaderSellTransaction hst
WHERE cs.CustomerID = hst.CustomerID AND 
cs.CustomerID = 'CU001'
ROLLBACK
SELECT* FROM HeaderSellTransaction

--3
SELECT* FROM Staff

BEGIN TRAN
DELETE FROM Staff
WHERE StaffSalary < '7000000.00' --boleh tanpa tanda petik dan .00
ROLLBACK --jawaban saya benar

--4
SELECT* FROM DetailSellTransaction
SELECT* FROM HeaderSellTransaction
SELECT* FROM Item

SELECT TransactionDate, CustomerName, ItemName, Price, [Discount Price] = Price - (0.2 * Price), PaymentType
FROM Customer cs, HeaderSellTransaction hst, DetailSellTransaction dst, Item im
WHERE cs.CustomerID = hst.CustomerID AND dst.TransactionID = hst.TransactionID
AND dst.ItemID = im.ItemID AND
DATENAME(DAY, TransactionDate) = 22