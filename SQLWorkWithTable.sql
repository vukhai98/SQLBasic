use TEDU;
-- create table 
CREATE TABLE Student
(
Id INT,
[Name] NVARCHAR(50),
Age INT,
DateOfBirth DATE,
Gender BIT
)
-- drop table
DROP TABLE Student;
--insert data to table
INSERT INTO Student(Id,Name,Age,DateOfBirth,Gender) VALUES (1,'Nguyen Van A',20,'1990-09-13',1);
INSERT INTO Student(Id,Name,Age,DateOfBirth,Gender) VALUES (2,'Nguyen Van B',21,'1990-09-13',1);
INSERT INTO Student(Id,Name,Age,DateOfBirth,Gender) VALUES (1,'Nguyen Van C',19,'1990-09-13',1);
SELECT * FROM Student;
-- delete table
DELETE FROM Student WHERE Age > 20;
DELETE FROM Student;
TRUNCATE TABLE Student;
-- rename table
sp_rename 'Student1' ,'Student'
SELECT * INTO Student1 FROM Student;
SELEct Id,Name Student2 FROM Student;





