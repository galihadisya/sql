--DATE FUNCTION/FUNGSI TANGGAL/WAKTU

--DATENAME => DATENAME(interval, 'date')
--Interval = Day, Weekday, Month, Year

SELECT [Hari Kelahiranku] = DATENAME(WEEKDAY, '1991/06/18')

SELECT DATENAME(YEAR, TransactionDate)
FROM HeaderSellTransaction

--DATEDIFF => DATEDIFF(interval, 'tanggal_pertama', 'tanggal_kedua')
SELECT DATEDIFF (YEAR, '1945/08/17', '2022/08/17')

--DATEADD => DATEADD(interval, mau_tambah_berapa, 'date')
SELECT DATEADD (DAY, 3, '1945/08/17')