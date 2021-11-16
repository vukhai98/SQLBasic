drop table Persons
create table Persons
(
	 ID Int NOT NULL,
	 LastName varchar(255) NOT NUll,
	 FirstName varchar(255),
	 Age int,
	 City varchar(255) 
)
insert into Persons(ID,LastName,FirstName,Age) values(3,'Nguyen Van','Khoi',21)

SELECT * FROM Persons
-- syntax create default constraint
ALTER TABLE Persons
add constraint DF_Persons_City Default 'Sandnes' For City

drop table Orderes
create table Orderes
(
	ID int NOT NULL,
	OrderNumber int NOT NULL,
	OrderDate date
)
select GETDATE()
-- Sybtax Create Constraint Default
alter table Orderes
Add Constraint DF_OrderDate DEFAULT getdate()
for OrderDate;
 
insert into Orderes(ID,OrderNumber) values(1,123);
select*from Orderes
-- Syntax DROP CONSTRIANT
alter table Orderes
drop constraint DF_OrderDate



