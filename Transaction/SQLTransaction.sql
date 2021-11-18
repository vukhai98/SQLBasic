create table ValueTable (id int)
begin transaction
insert into ValueTable values (1)
insert into ValueTable values (2)
commit 

declare @tranName varchar(20)= 'DeleteStudent'
begin transaction @tranName
delete from Student where Id = 1
commit transaction @tranName

select*from ValueTable

select* from Student
begin try
begin transaction
	INSERT INTO ValueTable VALUES (3)
	INSERT INTO ValueTable VALUES ('TEST')
commit
end try
begin catch
	if(@@TRANCOUNT > 0)
		rollback tran
	Declare @ErrorMessage Nvarchar(4000) = ERROR_MESSAGE()
	Declare @ErrorSeverity int = ERROR_SEVERITY()
	Declare @ErrorState int = ERROR_STATE()
		raiserror ( @ErrorMessage, --Message text.
					@ErrorSeverity, --Severity
					 @ErrorState --Sate.
					 );
end catch

