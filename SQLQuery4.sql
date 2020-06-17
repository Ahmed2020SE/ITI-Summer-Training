select Name,Gender,Salary,DepartementName
from tblEmployee
Inner Join tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id



select Name,Gender,Salary,DepartementName
from tblEmployee
 Join tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id



select Name,Gender,Salary,DepartementName
from tblEmployee
Left Outer JOIN tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id



select Name,Gender,Salary,DepartementName
from tblEmployee
Left JOIN tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id




select Name,Gender,Salary,DepartementName
from tblEmployee
Right Outer JOIN tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id




select Name,Gender,Salary,DepartementName
from tblEmployee
Right JOIN tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id



select Name,Gender,Salary,DepartementName
from tblEmployee
Full Outer JOIN tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id



select Name,Gender,Salary,DepartementName
from tblEmployee
Full JOIN tblDepartement
on tblEmployee.DepartementId=tbldepartement.Id




select Name,Gender,Salary,DepartementName
from tblEmployee
Cross JOIN tblDepartement

-----------------------------------------------------------------------------------------------------

select Id,Name,Email From tblIndiaCustomers
Union
select Id,Name,Email From tblUKCustomers


select Id,Name,Email From tblIndiaCustomers
Union ALl
select Id,Name,Email From tblUKCustomers
