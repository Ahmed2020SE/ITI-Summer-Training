alter table tblperson add constraint DF_tblperson_GenderID Default 1 for GenderID;
alter table tblperson add Gender nvarchar(50) NULL Constraint DF_tblperson_Gender Default 'Unknown';
alter table tblperson drop constraint DF_tblperson_Gender;
use students
GO
alter table tblperson
add constraint tblperson_GenderID_FK Foreign Key (GenderID) references tblGender(id);
alter table tblperson drop column Gender;
alter table tblperson drop constraint DF_tblperson_GenderID;
alter table tblperson add constraint DF_tblperson_GenderID default 3 for GenderID;

Insert into tblPerson (ID,Name,Email) values(5,'Sam','s@s.com');
Insert into tblPerson(ID,Name,Email) values(6,'Sara','s@s.com');
Insert into tblPerson(ID,Name,Email,GenderId) values (7,'Dan','d@d.com',1);
Insert into tblPerson(ID,Name,Email) values(8,'Maro','m@m.com');

select * from tblperson;
select * from tblGender;

insert into tblGender values(4,'Shithole');

delete from tblGender where ID=4;

SELECT [ID]
      ,[Name]
      ,[Email]
      ,[GenderID]
  FROM [dbo].[tblperson]

select Distinct Name, Email from tblperson

select * from tblperson where Name like 'sa%'
select * from tblperson where Email like '%@%.com'

select * from tblperson order by Name

select * from tblperson order by Name desc , Email asc

select top 2 * from tblperson

select top 1 percent * from tblperson

insert into tblEmployees values('Cairo',15000,'Ahmed','Male',3)
insert into tblEmployees values('Giza',30000,'Ahmed','Male',3)
insert into tblEmployees values('Maadi',12000,'Mohamed','Male',4)
insert into tblEmployees values('Mokkattam',10000,'Omar','Male',2)
insert into tblEmployees values('5th Settelement',20000,'Sara','Female',3)
insert into tblEmployees values('5th Settelement',40000,'Kamel','Male',1)
insert into tblEmployees values('5th Settelement',140000,'Hesham','Male',1)
insert into tblEmployees values('Maadi',5000,'Said','Male',1)
insert into tblEmployees values('Maadi',9000,'Hakim','Male',4)
insert into tblEmployees values('Giza',13000,'Aisr','Male',4)
insert into tblEmployees values('Maadi',7000,'Rania','Female',0)
insert into tblEmployees values('Mokkattam',13000,'Lamia','Female',0)

select name,sum(Salary) as SumOFAllEmployees from tblEmployees Group by name
select name,max(Salary) as MaxSalary from tblEmployees group by name

select name,min(Salary) as MinSalary from tblEmployees group by name

select city,sum(Salary) from tblEmployees group by City

select Gender,city,sum(Salary) as TotalSalary from tblEmployees group by Gender,City

select Gender,city,sum(Salary) as TotalSalary from tblEmployees group by Gender,city Having City='5th Settelement'
select Gender,city,sum(Salary) as TotalSalary from tblEmployees where City='5th Settelement' group by Gender,city 

select name,Gender,sum(Salary) as TotalSalary from tblEmployees group by name,Gender having sum(Salary)>6000;
alter table tblEmployees drop constraint DF_tblEmployees_departmentID
alter table tblEmployees drop column departmentID
alter table tblemployees add departmentID int
create table tblDepartement(Id int primary key Not Null,DepartementName nvarchar(50)) 
alter table tblEmployees add constraint DF_tblEmployees_departmentID Default 0 for departmentID
alter table tblEmployees 
Add Constraint tblEmployees_departmentID_FK foreign key (departmentID) references tblDepartement(Id); 
insert into tblDepartement values(1,'HR');
insert into tblDepartement values(2,'Sales');
insert into tblDepartement values(3,'Marketing');
insert into tblDepartement values(4,'IT');

select name,Gender,Salary,departementName from tblEmployees 
inner Join tblDepartement on tblEmployees.departmentID=tblDepartement.Id

select name,gender,salary,departementName from tblEmployees 
join tblDepartement on tblEmployees.departmentID=tblDepartement.Id

select name,gender,salary,departementName from tblEmployees 
left outer join tblDepartement on tblEmployees.departmentID=tblDepartement.Id

select name,gender,salary,departementName from tblEmployees 
right outer join tblDepartement on tblEmployees.departmentID=tblDepartement.Id

select name,gender,salary,departementName from tblEmployees 
left join tblDepartement on tblEmployees.departmentID=tblDepartement.Id

select name,gender,salary,departementName from tblEmployees 
right join tblDepartement on tblEmployees.departmentID=tblDepartement.Id

select Name,Gender,Salary,DepartementName
from tblEmployees e
Full JOIN tblDepartement d
on e.departmentID=d.Id

select Name,Gender,Salary,DepartementName
from tblEmployees e
cross JOIN tblDepartement d

select Name,Gender,Salary,DepartementName
from tblEmployees E
Left JOIN tblDepartement D
on E.departmentID=D.Id
where E.Salary>1000

create procedure spGetEmployees as
begin
 select e.ID,name,City,Gender,DepartementName from tblEmployees e inner join tblDepartement d on e.departmentID=d.Id
end

spGetEmployees

drop proc spGetEmployee
drop proc spGetEmployeeByGenderAndDepartement
drop proc spGetEmployeeCountByGender
drop proc spGetEmployees

create proc sp_Get_EmployeeByGenderAndDepartement
@Gender nvarchar(10),
@DepartementId int
As
Begin
 select name,gender,DepartementName from tblEmployees e inner join tblDepartement d on e.departmentID=d.Id
 where Gender=@Gender and departmentID=@DepartementId
End

exec sp_Get_EmployeeByGenderAndDepartement 'Male',0;

exec sp_helptext'sp_Get_EmployeeByGenderAndDepartement'

create proc spGetEmployee
with encryption
As
 begin
  select * from tblEmployees
 End

exec sp_helptext 'spGetEmployee'
drop proc spGetEmployee;

create proc spGetEmployeeCountByGender
@Gender nvarchar(10),
@EmployeeCount int output
As
 Begin
 select @EmployeeCount=COUNT(id) from tblEmployees where Gender=@Gender;
 End

declare @TotalCount int

exec spGetEmployeeCountByGender 'Male',@TotalCount out;

print @TotalCount

exec sp_help'spGetEmployeeCountByGender'

select Ascii('A')
select CHAR(65)

declare @start int
set @start=65
while(@start<=90)
begin
 print char(@start)
 set @start+=1
end

select LTRIM('     Mohamed')
select RTRIM('Ahmed        ')

select LOWER('HELLO')
select UPPER('ahmed')

select REVERSE('Hello')

select LEN('Ahmed')

select rand()
select rand(1)

select FLOOR(RAND()*10)

select round(850.556,1)

create function fn_EmployeeByGender(@gender nvarchar(10))
returns Table
As
return(select name,Gender,Salary,departmentID from tblEmployees where Gender=@gender)

select * from fn_EmployeeByGender('Male')

create view vwEmployeeByGenderMale
as
select * from fn_EmployeeByGender('Male')

select * from vwEmployeeByGenderMale

exec sp_helptext 'vwEmployeeByGenderMale'


create view vwEmployeeByDepartement
as
select name,gender,salary,departementName 
from tblEmployees e
Inner join tblDepartement d
on e.departmentID=d.Id

select * from vwEmployeeByDepartement

exec sp_helptext 'vwEmployeeByDepartement'

create view vwITDepartementEmployee
with encryption
as
select name,gender,salary,departementName 
from tblEmployees e
Inner join tblDepartement d
on e.departmentID=d.Id 
where d.DepartementName='IT'

exec sp_helptext'vwITDepartementEmployee'

select * from vwITDepartementEmployee


create view vwEmployeeCountByDepatement
as
select d.DepartementName,COUNT(*) as totalEmployee from tblEmployees e inner join tblDepartement d 
on e.departmentID=d.Id group by d.DepartementName

select * from vwEmployeeCountByDepatement
select * from vwEmployeeByDepartement
update vwEmployeeByDepartement set name='Amr' where Salary=5000

create index IX_TblEmployee_Salary
on tblEmployees(Salary ASC)

CREATE TABLE tblEmployeeAudit
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
)

create Trigger tr_tblEmployee_ForInsert
on tblEmployees
For Insert
As
Begin
Declare @id int
select @id=id from inserted
insert into tblEmployeeAudit values('New Employee with id= '+CAST(@id as nvarchar(5))+'is added at '+CAST(GETDATE() as nvarchar(25)))
End

Insert into tblEmployees values ('Maadi',3000,'james', 'Male', 1)
Insert into tblEmployees values ('Mokattam',3000,'sara', 'Female', 3)
Insert into tblEmployees values ('Giza',3000,'Tan','Female', 3)

select * from tblEmployees
select * from  tblEmployeeAudit

Create trigger tr_tblEmployees_ForDelete
on tblEmployees
For Delete
As
Begin
Declare @id int 
select @id=id from deleted
insert into tblEmployeeAudit values('An exisiting Employee with id = '+CAST(@id as nvarchar(5))
+' at time '+CAST(GETDATE() as nvarchar(25)))
End

select * from tblEmployees
select * from  tblEmployeeAudit

delete from tblEmployees where id=21

create trigger tr_tblEmployee_ForUpdate
on tblEmployees
for Update
as 
begin
select * from inserted
select * from deleted
End

Update tblEmployees set Name = 'Maleka', Salary = 6000, 
Gender = 'Female' where Id = 1

alter trigger tr_tblEmployee_ForUpdate
on tblEmployees
For update
as
begin
declare @Id int,@oldName nvarchar(20),@newName nvarchar(20),
@oldGender nvarchar(20),@newGender nvarchar(20),
@oldCity nvarchar(20),@newCity nvarchar(20),@oldSalary int,
@newSalary int,@oldDeptID int,@newDeptID int,@auditString nvarchar(1000)
select * into #TempTable from inserted 
while(Exists(select id from #TempTable))
begin
set @auditString=''
select top 1 @Id=id,@newCity=city,
@newName=name,@newGender=Gender,@newSalary=Salary,@newDeptID=departmentID from #TempTable
select @oldName=name,@oldGender=Gender,@oldCity=City,@oldSalary=Salary,@oldDeptID=departmentID from deleted
set @auditString='Employee with id= '+CAST(@Id as nvarchar(5))+' changed to '
if(@oldName<>@newName)
	set @auditString+='NAME from '+@oldName+' to '+@newName
if(@oldGender<>@newGender)
	set @auditString+=' GENDER from '+@oldGender+' to '+@newGender
if(@oldCity<>@newCity)
	set @auditString+=' CITY from '+@oldCity+' to '+@newCity
if(@oldSalary<>@newSalary)
	set @auditString+=' SALARY from '+cast(@oldSalary as nvarchar(10))+' to '+cast(@newSalary as nvarchar(10))
if(@oldDeptID<>@newDeptID)
	set @auditString+=' DEPTID from '+cast(@oldDeptID as nvarchar(10))+' to '+cast(@newDeptID as nvarchar(10))
insert into tblEmployeeAudit values(@AuditString)
Delete from #TempTable where Id = @Id
END
END

Update tblEmployees set Name = 'Malk', Salary = 9000, 
Gender = 'Female',City='Alexandria',departmentID=4 where Id = 5

select * from tblEmployees
select * from  tblEmployeeAudit

Create view vWEmployeeDetails
as
Select e.ID, Name, Gender, d.DepartementName
from tblEmployees e
join tblDepartement d
on e.DepartmentId = d.Id

Select * from vWEmployeeDetails

alter trigger tr_vWEmployeeDetails_InstedOfInsert
on vWEmployeeDetails
instead of Insert
as
begin
declare @deptID int
select @deptID=d.Id from tblDepartement d join inserted on d.DepartementName=inserted.DepartementName
if(@deptID is NULL)
begin
 raiserror('Invalid department name. Statement terminated',16,1)
 return
end
insert into tblEmployees(name,Gender,departmentID) select name,gender,@deptID from inserted
end

insert into vWEmployeeDetails(name,Gender,DepartementName) values ('valarie ','Female ','IT')
Select * from vWEmployeeDetails
select * from tblEmployees



create trigger tr_vWEmployeeDetails_InsteadOfUpdate
on vWEmployeeDetails
Instead of update
as
begin
if(update(id))
begin
 raiserror('ID Cannot be changed',16,1)
 return
end
if(UPDATE(DepartementName))
begin
declare @deptID int
select @deptID=d.id from tblDepartement d join inserted i on d.DepartementName=i.DepartementName
if(@deptID is null)
begin
raiserror('Invalid Departement Name',16,1)
Return 
end
update tblEmployees set departmentID=@deptID
from inserted i join tblEmployees e on e.ID=i.id
end
if(UPDATE(Gender))
begin
update tblEmployees set Gender=i.Gender from inserted i join tblEmployees e on e.ID=i.id
end
if(UPDATE(Name))
begin
update tblEmployees set name=i.name from inserted i join tblEmployees e on e.ID=i.id
end
end

Update vWEmployeeDetails 
set name = 'Johny', DepartementName = 'HR'
where Id = 22

update vWEmployeeDetails
set gender='Male' where id=22

Select * from vWEmployeeDetails
select * from tblEmployees

create trigger tr_vWEmployeeDetails_InsteadOfDelete
on vWEmployeeDetails
Instead OF DELETE
as 
begin
delete tblEmployees from tblEmployees e join deleted d on e.ID=d.id
end

delete from vWEmployeeDetails where id =22



select city,sum(salary) from tblEmployees group by City

select name,Gender,Salary,DepartementName from tblEmployees e left join tblDepartement d on e.departmentID=d.Id 


create table UKCustomers(ID int Identity(1,1) primary key Not Null,Name nvarchar(50),Email nvarchar(50))
create table indiaCustomers(ID int Identity(1,1) primary key Not Null,Name nvarchar(50),Email nvarchar(50))

insert into UKCustomers values('Ben','B@B.com')
insert into UKCustomers values('Sam','S@S.com')
insert into indiaCustomers values('Sam','S@S.com')
insert into indiaCustomers values('Raj','R@R.com')

select * From indiaCustomers
Union ALL
select * From UKCustomers

select DepartementName,COUNT(*) as TotalEmployees from tblEmployees e inner join tblDepartement d 
on e.departmentID=d.Id group by DepartementName