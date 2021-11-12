use TEDU;
select * from Customers
-- and operators
select * from Customers
where Contry = 'Germany' and City = 'Berlin'

--or operators
select * from Customers
where City ='Berlin' or City = 'London'

-- not operators
select * from Customers
where not Contry = 'Germany'

-- combine And, or and not
insert into Customers values (6,'Berlunds snabbkop','Christina Berglung','Berguvsvagen 8','Munich','S-958 22','Germany')
select * from Customers
where Contry = 'Germany' and (City ='Berlin' or City = 'Munich')

select * from Customers
where not Contry ='Germany' and not Contry ='Mexico'