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



