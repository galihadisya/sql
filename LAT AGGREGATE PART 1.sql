SELECT* FROM Item

--1
SELECT [Maximum Price] = MAX (Price), [Minimum Price] = MIN (Price), [Average Price] = AVG (Price)
FROM Item

--2
SELECT* FROM Staff
SELECT [Gender] = LEFT (StaffGender, 1), [Average Salary] = AVG(StaffSalary)
FROM Staff 
GROUP BY StaffGender

--nyoba avg gaji staff tiap posisi
SELECT StaffPosition, [Average Salary] = AVG(StaffSalary)
FROM Staff
GROUP BY StaffPosition

--3
SELECT* FROM ItemType
SELECT* FROM Item
SELECT* FROM DetailSellTransaction

SELECT ItemTypeName, [Total Transaction] = COUNT(TransactionID) 
FROM DetailSellTransaction dst, Item im, ItemType it
WHERE dst.ItemID = im.ItemID AND im.ItemTypeID = it.ItemTypeID
GROUP BY ItemTypeName

--4
SELECT* FROM HeaderSellTransaction

SELECT TransactionID, [Qty per Transaction] = SUM(SellQuantity)
FROM DetailSellTransaction
GROUP BY TransactionID

--di bawah contoh melihat kuantitas transaksi tipa customerid
SELECT CustomerID, [Quantity per Transaction] = SUM(SellQuantity)
FROM DetailSellTransaction dst, HeaderSellTransaction hst
WHERE dst.TransactionID = hst.TransactionID
GROUP BY CustomerID
