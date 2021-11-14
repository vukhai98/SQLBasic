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

select c1.CustomerName as Name1, c2.CustomerName as Name2
from Customers c1, Customers c2
where c1.City = c2.City and c1.CustomerID <> c2.CustomerID