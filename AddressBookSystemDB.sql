--UC1
--Create DataBase AddressBookSystem
CREATE Database AddressBookSystem;
USE AddressBookSystem;

--UC2
--Create Table In AddressBookSystem DataBase
CREATE TABLE AddressBook(
ContactId int identity(1,1) Primary Key,
FirstName varchar(20) not null,
LastName varchar(20) not null,
Address varchar(100) not null, 
City varchar(50) not null,
State varchar(200) not null,
Zip bigint not null ,
PhoneNumber bigint not null,
Email varchar(50)not null
)
SELECT * FROM AddressBook;

--UC3
--Inserting Data Into AddressBook Table
INSERT INTO AddressBook (FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) VALUES
('Sangmeshwar', 'Patil', 'Udgir', 'Latur', 'MH', '413519', '8956231245', 'sangmeshwar@gmail.com'),
('Pramod', 'Pawar', 'Ausa', 'Latur', 'MH', '413518', '2222222222', 'pramod@gmail.com'),
('Apurva', 'Shinde', 'Kharadi', 'Pune', 'MH', '413517', '5623897425', 'Apurva@gmail.com'),
('Shubham', 'Deshpande', 'Nilanga', 'Akola', 'MH', '496895', '888888888', 'Shubhamd@gmail.com'),
('Nagesh', 'Nawade', 'Nanded', 'Nanded', 'MH', '413256', '8529637894', 'Nageshn@gmail.com'),
('Rahul', 'Yadav', 'Noida', 'Noida', 'UP', '569321', '8956451236', 'rahul@gmail.com'),
('Omkar', 'Lasune', 'Panaji', 'Goa', 'Goa', '859632', '8529638956', 'omkar@gmail.com')
SELECT * FROM AddressBook;

--UC4
--Editing/Updating Existing Record
UPDATE AddressBook SET Address='Deoni' WHERE FirstName='Pramod'
UPDATE AddressBook SET City='Nanded' WHERE FirstName='Nagesh'
UPDATE AddressBook SET Zip='412563' WHERE FirstName='Apurva'
UPDATE AddressBook SET Email='shubhamD@gmail.com' WHERE FirstName='Shubham';

--UC5
--Deleting Existing Record From AddressBook Table
DELETE FROM AddressBook WHERE FirstName='Nagesh';

-- UC6 
--Retrive By City or State
SELECT * FROM AddressBook WHERE City = 'Latur';
SELECT * FROM AddressBook WHERE State = 'MH';

--UC7
--Size Of AddressBook By City
SELECT COUNT(City) AS 'NumberOfContacts' FROM AddressBook WHERE City='Latur' GROUP BY City;
SELECT COUNT(State) AS 'NumberOfContacts' FROM AddressBook WHERE State='MH' GROUP BY State;

SELECT COUNT(*) AS CityCount,City FROM AddressBook GROUP BY City;

--UC8
--ASC for Ascending order And DESC for Descending order 
SELECT * FROM AddressBook WHERE City='Latur' ORDER BY FirstName;
SELECT * FROM AddressBook WHERE City='Latur' ORDER BY FirstName ASC;

--UC9
--Alter Address Book to add AddressBookName and AddressBookType
ALTER TABLE AddressBook ADD AddressBookType VARCHAR(50);
ALTER TABLE AddressBook ADD AddressBookName VARCHAR(50);
SELECT * FROM AddressBook;

--Update Contacts for AddressBookType
UPDATE AddressBook SET AddressBookType ='Friends' WHERE FirstName IN ('Sangmeshwar', 'Pramod');
UPDATE AddressBook SET AddressBookType ='Family' WHERE FirstName IN ('Apurva','Shubham');
UPDATE AddressBook SET AddressBookType ='Professional' WHERE FirstName IN ('Omkar','Rahul');

--Update Contacts for AddressBookName
UPDATE AddressBook SET  AddressBookName ='Office' WHERE FirstName IN ('Omkar', 'Rahul', 'Nagesh', 'Shubham');
UPDATE AddressBook SET  AddressBookName ='Home' WHERE FirstName IN ('Sangmeshwar','Pramod','Apurva');
SELECT * FROM AddressBook;

--UC10
--Count contacts by contact type
SELECT AddressBookType, COUNT(AddressBookType) AS NoOfContactPresent FROM AddressBook GROUP BY AddressBookType;

--UC11
--Adding contact to both Friend and Family
INSERT INTO AddressBook VALUES
('Bharat','Singh','Sikh Street','Amritsar','Punjab','478985','9856985696','bharrat@gmail.com','Professional','Office'),
('Pranita','Sontakke','Shivaji Nagar','Pune','MH','477485','8956237485','pranitacs@gmail.com','Family','Home')
