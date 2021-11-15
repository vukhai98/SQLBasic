drop table Students
create table Students 
(
	StudentId int primary key,
	Name nvarchar(50),
	Age int,
	JoinOfDate datetime
)
alter table Students
alter column Name nvarchar(50) not null

alter table Students
drop constraint PK__Students__32C52B997FF5BFF7

alter table Students
add constraint pk_Studens_StudentID_Name primary key (StudentId,Name)