alter view v_Student_AgeGreaterThan18
as
select * from Student
where Age is NOT NULL
with check option

select* from v_Student_AgeGreaterThan18

update v_Student_AgeGreaterThan18
set Id = 3 
where  Id =1 and Name = 'Nguyen Van C'
update v_Student_AgeGreaterThan18 
set Province1 = 'Ha Noi' ,District = 'Cau Giay'
where Id = 1
insert into v_Student_AgeGreaterThan18 
values(4,'Nguyen Van D',22,'1992-3-21',1,'Nam Dinh','Nam Truc')

delete from v_Student_AgeGreaterThan18  where Id = 4