--delete
SELECT* FROM Customer

BEGIN TRANSACTION

DELETE FROM Customer
WHERE CustomerName = 'Rais'
ROLLBACK

DELETE FROM Customer
WHERE CustomerAddress = 'Jalan Melrose'

SELECT* FROM HeaderSellTransaction

BEGIN TRANSACTION
DELETE FROM HeaderSellTransaction
WHERE DATENAME(DAY, TransactionDate) = 21
ROLLBACK