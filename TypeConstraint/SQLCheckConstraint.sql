drop table Persons
create table Persons
(
	 ID Int NOT NULL,
	 LastName varchar(255) NOT NUll,
	 FirstName varchar(255),
	 Age int 
)
insert into Persons values(1,'Vu Minh','Khai',23)
insert into Persons values(2,'Vu Minh','Khai',17)
insert into Persons values(2,'Vu Minh','Khai',16)
alter table Persons
add constraint CK_Persons_Age check (Age>=17)
