
--1. Country Table
create Table Country
(
CountryId int identity primary key,
CountryName varchar(200),
Continent varchar(200),
Currency varchar(200)
);

--2 Department Table
create table Department
(
DeptId int primary key,
DeptName varchar(200),
CountryId int foreign key references dbo.country(CountryId),
);

--3 Employee Table
create table Employee(
EmpId int primary key,
EmpName varchar(200) Not Null,
DeptId int foreign key references dbo.Department(DeptId) null,
);

--4 Folder Table
create table folder
(
FolderId int not null,
EmpId int references employee(empId),
accesstype varchar(5) null,
); 