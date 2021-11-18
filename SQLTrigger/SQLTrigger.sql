use TEDU
create table t1 (id int primary key, t1_value varchar(50))
insert into t1 select 1, 'value1'
insert into t1 select 2, 'value2'
insert into t1 select 3, 'value3'
go

create table t2 (id int primary key, t2_value varchar(50))
insert into t2 select 1, NULL
insert into t2 select 2, NULL
insert into t2 select 3, NULL
go

select * from t1
select * from t2
go
-- create trigger
alter trigger update_t2
on t1 for update
as
begin
		set nocount on

		update t2 
		set t2_value = t1_value
		from inserted as i
		inner join t2 on t2.id = i.id
		
end
-- run trigger
 update t1 
 set t1_value = 'Sample'
 -- example 2
 create table tblOrders
(
  OrderID integer Identity(1,1) primary key,
  OrderApprovalDateTime datetime,
  OrderStatus varchar(20)
)

create table tblOrdersAudit
(
  OrderAuditID integer Identity(1,1) primary key,
  OrderID integer,
  OrderApprovalDateTime datetime,
  OrderStatus varchar(20),
  UpdatedBy nvarchar(128),
  UpdatedOn datetime
)
go
-- create trigger
create trigger trig_CreateOderAudit on tblOrders
after update, insert
as
begin
	insert into tblOrdersAudit(OrderID, OrderApprovalDateTime, OrderStatus, UpdatedBy, UpdatedOn )
	select i.OrderID,i.OrderApprovalDateTime,i.OrderStatus,SUSER_NAME(),getdate() from tblOrders t inner join inserted i on t.OrderID = i.OrderID
end
go
insert into tblOrders values (NULL, 'Pending')
insert into tblOrders values (NULL, 'Pending')
insert into tblOrders values (NULL, 'Pending')
go
select * from  tblOrdersAudit
go

update tblOrders
set OrderStatus = 'Approved', OrderApprovalDateTime = GETDATE()
where OrderID = 4
go




 

