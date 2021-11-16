drop table Persons
create table Persons
(
	ID int identity(1,1) primary key,
	LastName varchar(255) NOT NULL,
	FirstName varchar(255),
	Age int
);
insert into Persons(LastName,FirstName,Age)
values('Vu Minh','Khai',23);
select * from Persons
