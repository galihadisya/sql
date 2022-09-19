CREATE DATABASE eCommerce
use eCommerce

--di bawah ini adalah query untuk membuat tabel customer

CREATE TABLE Customer(
	CustomerID CHAR(5) NOT NULL PRIMARY KEY,
	CONSTRAINT cekCustomerID 
	CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),

	CustomerName VARCHAR(50) NOT NULL,

	CustomerGender VARCHAR(10) NOT NULL,
	CONSTRAINT cekCustomerGender 
	CHECK(CustomerGender = 'Male' or CustomerGender = 'Female'),

	CustomerPhone VARCHAR(13),

	CustomerAddress VARCHAR(100)
)

--di bawah ini adalah query untuk membuat tabel staff

CREATE TABLE Staff(
	StaffID CHAR(5) NOT NULL PRIMARY KEY,
	CONSTRAINT cekStaffID
	CHECK(StaffID LIKE 'SF[0-9][0-9][0-9]'),

	StaffName VARCHAR(50) NOT NULL,

	StaffGender VARCHAR(10),
	CONSTRAINT cekStaffGender
	CHECK(StaffGender = 'Male' or StaffGender = 'Female'),

	StaffPhone VARCHAR(13),
	StaffAddress VARCHAR(100),

	StaffSalary NUMERIC(11,2),

	StaffPosition VARCHAR(20)
)

--di bawah ini adalah query untuk membuat tabel ItemType
CREATE TABLE ItemType(
	ItemTypeID CHAR(5) PRIMARY KEY,
	ItemTypeName VARCHAR(50),
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
	CONSTRAINT cekIDTrans CHECK(TransactionID LIKE 'TR[0-9][0-9][0-9]')
)

--di bawah ini adalah query untuk membuat tabel DetailSellTransaction
CREATE TABLE DetailSellTransaction(
	TransactionID CHAR(5) REFERENCES HeaderSellTransaction ON UPDATE CASCADE ON DELETE CASCADE,
	ItemID CHAR(5) REFERENCES Item ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (TransactionID, ItemID)	
)

--ALTER TABLE HeaderSellTransaction ADD CONSTRAINT cekIDTrans CHECK(TransactionID LIKE 'TR[0-9][0-9][0-9]')
-- BISA JUGA MODIFY CONSTRAINT kalau mau ubah aturan constraint