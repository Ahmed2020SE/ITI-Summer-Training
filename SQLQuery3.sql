select * from tblEmployees

select sum(Salary) from tblEmployees
select max(Salary) from tblEmployees
select min(Salary) from tblEmployees

select City , sum(Salary)
 from tblEmployees



 select City , sum(Salary) as totalSalary
 from tblEmployees
 Group by City




 select City , sum(Salary) as [total salary]
 from tblEmployees
 Group by City



  select Gender,City , sum(Salary) as [total salary]
 from tblEmployees
 Group by Gender, City


 select City ,Gender, sum(Salary) as [total salary]
 from tblEmployees
 Group by  City  , Gender



 select City , sum(Salary)   as [total salary]
 from tblEmployees
 Group by City
 Having City = 'London'


 select City , sum(Salary)   as [total salary]
 from tblEmployees
 where City = 'London'
 Group by City



 select City , sum(Salary)   as [total salary]
 from tblEmployees
 where sum(salary) >6000
 Group by City

 --where statement can not use with aggregate function 

 select City , sum(Salary)   as [total salary]
 from tblEmployees
 Group by City
 Having sum(salary) >6000
