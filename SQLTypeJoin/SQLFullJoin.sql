drop table Customers

create table Customers
(
	CustomerID int,
	CustomerName nvarchar(50),
	ContactNAme nvarchar(50),
	Address nvarchar(50),
	City nvarchar(50),
	PostalCode nvarchar(20),
	Country nvarchar(20)
)
insert into Customers values(1, 'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');
insert into Customers values(2,	'Ana Trujillo Emparedados y helados	Ana Trujillo','Avda. de la Constituci�n', '2222','M�xico D.F.','05021','Mexico');
insert into Customers values(3,	'Antonio Moreno Taquer�a','Antonio Moreno	Mataderos', '2312','M�xico D.F.','05023','Mexico');

create table Orders
(
	OrderID int,
	CustomerID int,
	EmployeeID int,
	OrderDate datetime,
	ShipperID int
)
insert into Orders values(10308,2,7,'1996-09-18',3)
insert into Orders values(10309,37,3,'1996-09-19',1)
insert into Orders values(10310,77,8,'1996-09-20',2)

select * from Customers
select * from Orders

select 
c.CustomerName, o.OrderID
from Customers c
full outer join Orders o
on c.CustomerID = o.OrderID