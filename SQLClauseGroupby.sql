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

insert into Customers values(1, 'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany')
insert into Customers values(2,	'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constituci�n 2222','M�xico D.F.','05021','Mexico')
insert into Customers values(3,	'Antonio Moreno Taquer�a','Antonio Moreno','Mataderos 2312','M�xico D.F.','05023','Mexico')
insert into Customers values(4, 'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK')
insert into Customers values(5,	'Berglunds snabbk�p','Christina Berglund','Berguvsv�gen 8','Lule�','S-958 22','Sweden')

--country 1: 10
--country 2: 12
--group by
select Country,Count(CustomerID) as NumberOfCustomer from Customers
group by Country 
having Count(CustomerID) > 1
order by  Count(CustomerID) asc

drop table Orders
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

create table Shippers
(
	ShipperID int,
	ShipperName nvarchar(50)
)
insert into Shippers values(1,'Speedy Express')
insert into Shippers values(2,'United Package')
insert into Shippers values(3,'Federal Shipping')
 -- group by whith join
 -- How many order for each shipper ?
 -- Shipper name : number of orders
 select s.ShipperName,count(o.OrderID) as NumberOfOrders
 from Orders o
 left join Shippers s on o.ShipperID = s.ShipperID
 group by s.ShipperName 
 having count(o.OrderID) > 0
 order by s.ShipperName asc