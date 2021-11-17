-- scaler Function
create function UDF_CalculateAge
(
	 @Age Int
)
returns bit
as
begin 
	declare @allBuyTicket bit;
	if(@Age >= 20)

		SET @allBuyTicket = 1;	
	else
		SET @allBuyTicket = 0;
	return @allBuyTicket ;
	
end

select*from
(select  *,  dbo.UDF_CalculateAge(Age) as AllowBuyTicket from Student)
as a where AllowBuyTicket = 1
go

-- Inline Function
create function udf_StudentAgeThan(@age int)

returns table
as
return(
	select*from Student where Age> @age
)

select * from [dbo].[udf_StudentAgeThan](19)
go

-- multi lines
create function udf_GetNumnberOfCustomerByCountry()
returns @numberOfCustomerByCountry table
(
	Country nvarchar(50),
	NumberOfCustomer int
)
as
begin
	insert into @numberOfCustomerByCountry
	select Country,Count(*) as NumberOfCustomer from Customers
	group by Country
	return
end
go
 select * from dbo.udf_GetNumnberOfCustomerByCountry();
 go