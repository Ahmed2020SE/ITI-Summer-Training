create database sample1

Alter database sample11 Modify name = sample1

drop database exam

use [sample1]
Go
Create Table tblGender
(ID int Not Null Primary Key,
Gender nvarchar(50))



Alter table tblperson 
add constraint tblperson_GenderID_FK  FOREIGN KEY (GenderId) references tblGender(Id)



select * from tblGender
select * from tblperson


Insert into tblPerson (ID,Name,Email) values(5,'Sam','s@s.com')

ALTER TABLE tblPerson
ADD CONSTRAINT DF_tblPerson_GenderId
DEFAULT 3 FOR GenderId


Insert into tblPerson(ID,Name,Email) values(6,'Sara','s@s.com')
Insert into tblPerson(ID,Name,Email,GenderId) values (7,'Dan','d@d.com',1)

Insert into tblPerson(ID,Name,Email) values(8,'Maro','m@m.com')



ALTER TABLE tblPerson
DROP CONSTRAINT DF_tblPerson_GenderId





Delete from tblGender where ID=3




Create Table tblPerson1
(
ID int Identity(1,1) Primary Key,
Name nvarchar(20)
)


Insert into tblPerson1 values ('Sam')
Insert into tblPerson1 values ('Sara')







select *  from tblperson



USE [sample1]
GO

SELECT [ID]
      ,[Name]
      ,[Email]
      ,[GenderID]
  FROM [dbo].[tblperson]
GO




select Name from tblperson 

select Distinct Email from tblperson

select Distinct Name, Email from tblperson

select Name from tblperson where ID=5

select * from tblperson where Name like 'sa%'
select * from tblperson where Email like '_@_.com'



select * from tblperson order by Name

select * from tblperson order by Name desc , Email asc

select top 2 * from tblperson

select top 1 percent * from tblperson

select top 50 percent * from tblperson

select top 2 * from tblperson  order by Name desc





