USE [master]  
GO  
CREATE DATABASE MVCAPP
GO  
USE MVCAPP  
GO  
CREATE SCHEMA HR  
GO  
CREATE TABLE HR.Employees
(  
Id int NOT NULL,  
Name nvarchar(50) NOT NULL,  
Age int NOT NULL,  
HiringDate datetime NULL,  
GrossSalary decimal(10, 2) NOT NULL,  
ModifiedDate datetime NOT NULL,  
 CONSTRAINT PK_Employees PRIMARY KEY CLUSTERED (Id ASC) ON PRIMARY  
) ON PRIMARY  
GO  
ALTER TABLE HR.Employees ADDCONSTRAINT DF_Employees_ModifiedDate DEFAULT (GETDATE()) FOR ModifiedDate  
GO  