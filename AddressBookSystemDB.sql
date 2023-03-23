--UC1
--Create DataBase AddressBookSystem
Create Database AddressBookSystem;
Use AddressBookSystem;

--UC2
--Create Table In AddressBookSystem DataBase
Create Table AddressBook(
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
Select * From AddressBook;

--UC3
--Inserting Data Into AddressBook Table
Insert into AddressBook (FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values
('Sangmeshwar', 'Patil', 'Udgir', 'Latur', 'MH', '413519', '8956231245', 'sangmeshwar@gmail.com'),
('Pramod', 'Pawar', 'Ausa', 'Latur', 'MH', '413518', '2222222222', 'pramod@gmail.com'),
('Apurva', 'Shinde', 'Kharadi', 'Pune', 'MH', '413517', '5623897425', 'Apurva@gmail.com'),
('Shubham', 'Deshpande', 'Nilanga', 'Akola', 'MH', '496895', '888888888', 'Shubhamd@gmail.com'),
('Nagesh', 'Nawade', 'Nanded', 'Nanded', 'MH', '413256', '8529637894', 'Nageshn@gmail.com')
Select * From AddressBook;

--UC4
--Editing/Updating Existing Record
Update AddressBook Set Address='Deoni' Where FirstName='Pramod'
Update AddressBook Set City='Nanded' Where FirstName='Nagesh'
Update AddressBook Set Zip='412563' Where FirstName='Apurva'
Update AddressBook Set Email='shubhamD@gmail.com' Where FirstName='Shubham';

--UC5
--Deleting Existing Record From AddressBook Table
Delete from AddressBook Where FirstName='Nagesh';

-- UC6 
--Retrive By City or State
SELECT * FROM AddressBook WHERE City = 'Latur';
SELECT * FROM AddressBook WHERE State = 'MH';

--UC7
--Size Of AddressBook By City
Select Count(City) as 'NumberOfContacts' from AddressBook Where City='Latur' Group by City;
Select Count(State) as 'NumberOfContacts' from AddressBook Where State='MH' Group by State;

--UC8
--ASC for Ascending order And DESC for Descending order 
Select * From AddressBook Where City='Latur' Order by FirstName ASC;