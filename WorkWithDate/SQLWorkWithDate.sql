drop table Orderes
create table Orderes
(
	 ID int NOT NULL,
	 OrderNumber int NOT NULL,
	 OrderDate date
)
insert into Orderes values(2,2000,'2021-11-15')
select * from Orderes
select *from Orderes where OrderDate = '2021-11-16';
-- dateadd tinh  so ngay/thang/nam tiep  so voi getdate()
select DATEADD(DAY,-1,getdate()) as MonthOfNext
-- datediff tinh khoang cach giua 2 ngay
select DATEDIFF(DAY,'2014-11-20','2021-11-16')
--datepart lay 1 phan cua ngay thang
select DATEPART(HOUR,getdate())

