 drop table OrderDetailes
 drop table Orders
create table OrderDetailes
(
	OrderId int foreign key references Orders(OrderID),
	ProductId int,
	Quantity int,
	Price decimal
	constraint pk_OderDetails_OrderId_ProductId
	primary key(OrderId,ProductId)
)
create table Orders
(
	OrderID int primary key,
	CreatedDate datetime,
	CustomerId int

)
alter table  OrderDetailes
add Foreign key (OrderId) references Orders(OrderID)

alter table  OrderDetailes
drop constraint FK__OrderDeta__Order__6A30C649
