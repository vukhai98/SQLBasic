alter proc usp_MakeOrder
@productId int
@orderId
as
	begin
		insert into Orders values(1,GETDATE(),'001');
	
	end

--exec usp_MakeOrder 
select*From Products


alter proc usp_GetStudentPaging
@pageIndex int,
@pageSize int,
@totalRow int output
as
begin
	select @totalRow  = count(*) from Student
	select * from (
	select RowNumber = Row_number() over
	 (order by Name),* from Student) as a
	 where RowNumber > (@pageSize * (@pageIndex-1))
	 and RowNumber <= (@pageSize * (@pageIndex-1)) + @pageSize
end
declare  @totalRow int
exec usp_GetStudentPaging 1,2,@totalRow output
select @totalRow

drop proc usp_GetStudentPaging