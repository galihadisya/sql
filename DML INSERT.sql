--insert

SELECT*
FROM Customer

--transaction harus diexecute ketika ingin insert data
BEGIN TRANSACTION
--perintah2
--rollback data tidak akan disave
--commit data akan disave

SELECT* FROM Customer
INSERT INTO Customer VALUES
('CU006', 'Ferdy Sambo', 'Male', '081369696969', 'Jalan Kemelut 69')
COMMIT

INSERT INTO Customer (CustomerID, CustomerName, CustomerGender) VALUES
('CU007', 'Alexa', 'Female')
ROLLBACK

BEGIN TRANSACTION
SELECT* FROM Customer

INSERT INTO Customer VALUES
('CU007', 'Putri', 'Female', '081333696333', 'Jalan Kelopak')
COMMIT

INSERT INTO Customer VALUES
('CU008', 'Rais', 'Male', '081737696333', 'Jalan Melrose'),
('CU009', 'Sikraj', 'Male', '081234696567', 'Jalan Melrose')