drop table Person
create table Person
(
	PersonId int Primary key,
	IdentityNo varchar(20) ,
	Name nvarchar(50)

)
insert Person values(1,'123','Nguyen Van A')
insert Person values(2,'234','Nguyen Van B')
alter table Person
add constraint UC_Person_IdentityNo unique(IdentityNo)