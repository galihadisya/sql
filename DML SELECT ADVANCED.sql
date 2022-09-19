--Advanced Function

--CAST => CAST(nama_kolom AS tipe_data_yang_diinginkan)
SELECT [Gaji] = 'Rp' + CAST (StaffSalary AS VARCHAR)
FROM Staff

SELECT*
FROM Staff

--CONVERT => CONVERT(tipe_data_yang_diinginkan, nama_kolom, kode_tujuan)
SELECT*
FROM HeaderSellTransaction

--kode_tujuan 103 berasal dari web microsoft standard date and time,
--dengan cara memblok CONVERT lalu tekan F1
SELECT [Tanggal yang sudah di-convert] = CONVERT(VARCHAR, TransactionDate, 103)
FROM HeaderSellTransaction