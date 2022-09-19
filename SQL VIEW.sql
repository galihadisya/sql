--VIEW
--Virtual Table

SELECT*
FROM Staff
WHERE StaffGender = 'Male'

CREATE VIEW [Male Staff List] AS
SELECT*
FROM Staff
WHERE StaffGender = 'Male'

SELECT* FROM [Male Staff List]

--untuk hapus view yang tersimpan
DROP VIEW [Male Staff List]

CREATE VIEW [Female Staff List] AS
SELECT StaffName
FROM Staff
WHERE StaffGender = 'Female'

SELECT* FROM [Female Staff List]

ALTER VIEW [Female Staff List] AS
SELECT [Nama Depan] = LEFT(Staffname, CHARINDEX(' ', StaffName)-1),
	[Gender] = LEFT(StaffGender, 1)
FROM Staff
WHERE StaffGender = 'Female' 


