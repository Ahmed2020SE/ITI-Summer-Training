select Name,Gender,Salary,DepartementName
from tblEmployee E
Left JOIN tblDepartement D
on E.DepartementId=D.Id





select Name,Gender,Salary,DepartementName
from tblEmployee E
Left JOIN tblDepartement D
on E.DepartementId=D.Id
where E.DepartementId is null




select Name,Gender,Salary,DepartementName
from tblEmployee E
right JOIN tblDepartement D
on E.DepartementId=D.Id
where E.DepartementId is null





select Name,Gender,Salary,DepartementName
from tblEmployee E
full JOIN tblDepartement D
on E.DepartementId=D.Id
where E.DepartementId is null or D.Id is null


-----------------------------------------------------------------


select * from tblEmployee 

select Gender,DepartementId from tblEmployee


-----------------------------


Create procedure spGetEmployee
As
Begin
select Gender,DepartementId from tblEmployee
End





Create proc spGetEmployee
As
Begin
select Gender,DepartementId from tblEmployee
End



spGetEmployee

Execute spGetEmployee


Exec spGetEmployee
-----------------------------------------------

Create proc spGetEmployeeByGenderAndDepartement
@Gender nvarchar(50),
@DepartementId int
As
Begin
select Name,Gender,DepartementId from tblEmployee where Gender=@Gender
and DepartementId=@DepartementId
End




spGetEmployeeByGenderAndDepartement 'male',2



spGetEmployeeByGenderAndDepartement 2,'male'

spGetEmployeeByGenderAndDepartement @DepartementId=2,@Gender='male'

----------------------------------------------------------------------



sp_helptext'spGetEmployeeByGenderAndDepartement'

run script
------------------------------------


sp_helptext'spGetEmployee'


Alter procedure spGetEmployee

As

Begin

select Gender,DepartementId from tblEmployee order by Name

End

------------------------------------------------------


drop proc spGetEmployee 


-----------------------------------
create  procedure spGetEmployee
with encryption

As

Begin

select Gender,DepartementId from tblEmployee order by Name

End



sp_helptext'spGetEmployee'



-------------------------------------------------------

Create proc spGetEmployeeCountByGender
@Gender nvarchar(50),
@EmployeeCount int output
As
Begin
select @EmployeeCount=count(Id) from tblEmployee where Gender=@Gender
End



Declare @TotalCount int
Exec spGetEmployeeCountByGender 'male',@TotalCount out
print @TotalCount


Declare @TotalCount int
Exec spGetEmployeeCountByGender @TotalCount out ,'male'
print @TotalCount





Declare @TotalCount int
Exec spGetEmployeeCountByGender @EmployeeCount=@TotalCount out,@gender='male'
print @TotalCount

---------------------------------


sp_help spGetEmployeeCountByGender


sp_help tblEmployee

sp_helptext spGetEmployeeCountByGender

sp_depends spGetEmployeeCountByGender

sp_depends tblEmployee