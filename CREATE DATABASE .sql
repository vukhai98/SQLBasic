
CREATE DATABASE [sample]

ALTER DATABASE [TUDE] MODIFY NAME =  [sample] 
USE [sample]
 --CREATE WITH OPPTIONS
CREATE DATABASE SALES
ON
(
	NAME = SALES_DATA,
	FILENAME = 'D:\DATABASE\SALES.LDF',
	SIZE = 10 MB,
	MAXSIZE = 50 MB,
	FILEGROWTH = 5MB
)
LOG ON
(

	NAME = SALES_LOG,
	FILENAME = 'D:\DATABASE\SALES.MDF',
	SIZE = 10 MB,
	MAXSIZE = 50 MB,
	FILEGROWTH = 5MB
)