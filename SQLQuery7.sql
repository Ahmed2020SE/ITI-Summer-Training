select Name,Gender,Salary,DepartementName
from tblEmployee
Inner Join tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id





create view vWEmployeeByDepartement
as
select Name,Gender,Salary,DepartementName
from tblEmployee
Inner Join tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id



select * from vWEmployeeByDepartement


sp_helptext vWEmployeeByDepartement



create view vWITDepartement_Employee
as
select Name,Gender,Salary,DepartementName
from tblEmployee
Inner Join tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id
where tblDepartement.DepartementName='IT'



select * from vWITDepartement_Employee




create view vWDepartement_Employee
as
select  Name,Gender,DepartementName
from tblEmployee
Inner Join tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id



create view vWEmployeeCountByDepartement
as
select  DepartementName,Count(*) as totalEmployee
from tblEmployee
Inner Join tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id
group by DepartementName


select * from vWEmployeeCountByDepartement





create view vWEmployeeDtat
as
select  Name,Gender,DepartementId
from tblEmployee




Alter view vWEmployeeDtat
as
select ID, Name,Gender,DepartementId
from tblEmployee

update vWEmployeeDtat 
set Name='Mick' where ID =7


Delete from vWEmployeeDtat where ID=5




Create view vWEmployeeDtat2
as
select ID, Name,Gender,DepartementId
from tblEmployee


insert into vWEmployeeDtat2 Values (5,'james', 'male',1)



create view vWEmployeeDetailsByDepartement
as
select Name,Gender,Salary,DepartementName
from tblEmployee
Inner Join tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id


select * from vWEmployeeDetailsByDepartement


update vWEmployeeDetailsByDepartement 
set DepartementName='Paryoll' where name ='Ben'


------------------------------------------------------
select * from tblEmployee where salary>2000 and salary <5000


create index IX_TblEmployee_Salary
on tblEmployee (Salary ASC)