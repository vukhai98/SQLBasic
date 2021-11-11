-- add 1  new column in table
alter table Student
add Address nvarchar(50)

alter table Student
add Province nvarchar(50), District nvarchar(50)

-- sua data type of column in table
alter table Student
alter column Address nvarchar(250)

-- delete 1 column in table
alter table Student
drop column Address 

--  rename 1 column in table
sp_rename'Student.Province','Province1','Column'
