CREATE DATABASE Tugas

--di bawah ini adalah query untuk membuat tabel ItemType
CREATE TABLE ItemType(
	ItemTypeID CHAR(5) NOT NULL PRIMARY KEY,
	ItemTypeName VARCHAR(50) NOT NULL,
	CONSTRAINT cekIDItemType 
	CHECK(ItemTypeID LIKE 'IT[0-9][0-9][0-9]')	
)

--di bawah ini adalah query untuk membuat tabel Item
CREATE TABLE Item(
		-- foreign key
	ItemID CHAR(5) PRIMARY KEY,
	ItemTypeID CHAR(5) REFERENCES ItemType ON UPDATE CASCADE ON DELETE CASCADE,
	ItemName VARCHAR(50),
	Price NUMERIC(11,2),
	Quantity INTEGER,
	CONSTRAINT cekIDItem CHECK(ItemID LIKE 'IM[0-9][0-9][0-9]')
)

--di bawah ini adalah query untuk membuat tabel HeaderSellTransaction
CREATE TABLE HeaderSellTransaction(
	TransactionID CHAR(5) PRIMARY KEY,
	CustomerID CHAR(5) REFERENCES Customer ON UPDATE CASCADE ON DELETE CASCADE,
	StaffID CHAR(5) REFERENCES Staff ON UPDATE CASCADE ON DELETE CASCADE,
	TransactionDate DATE,
	PaymentType VARCHAR(20),
	CONSTRAINT cekIDTrans CHECK(TransactionID LIKE 'CU[0-9][0-9][0-9]')
)

CREATE TABLE DetailSellTransaction(
	TransactionID CHAR(5) NOT NULL,
	ItemID CHAR(5) NOT NULL,
	SellQuantity INTEGER
)
