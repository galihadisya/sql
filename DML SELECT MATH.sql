--Math Function / Fungsi Matematika
SELECT* 
FROM Staff

--Max
SELECT [Gaji Terbesar] = MAX (StaffSalary)
FROM Staff

--MIN
SELECT [Gaji Terkecil] = MIN (StaffSalary)
FROM Staff

--AVG
SELECT [Rata-Rata Gaji] = AVG (StaffSalary)
FROM Staff

--COUNT
SELECT [Jumlah Transaksi] = COUNT(TransactionID)
FROM HeaderSellTransaction

--SUM
SELECT [Total Gaji] = SUM(StaffSalary)
FROM Staff

SELECT* FROM HeaderSellTransaction