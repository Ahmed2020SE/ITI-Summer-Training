select ASCII('A')

select Char(65)

---------------------
Declare @start int 
set @start =65
while (@start<=90)
begin
print Char(@start)
set @start=@start +1
end

-----------------

select'          Mohamed'

select LTRIM('    Mohamed')

select'Mohamed                             ' as Name

select RTRIM('Mohamed                          ')as Name
------------------------

select lower('Hello')

select lower('HELLO')
select upper('hello')

-------------------------
select 'Hello'

select reverse ('Hello')
---------------
select 'ABC DEF'
select len ('ABC DEF') as NumberOfChar
-----------------------------------------------
select ABS(-10.5)
select Ceiling(15.2)
select Ceiling(-15.2)
select floor(15.2)
select floor(-15.2)
select power(2,3)
select square(9)
select sqrt(81)

-------------------------

select rand()
select rand(1)

select rand()*100
select floor( rand()*100)


Declare @Count int 
set @Count =1
while (@Count<=10)
begin
print floor( rand()*100)
set @Count=@Count +1
end

--------------------


select round(850.556,2)

select round(850.556,2,1)

select round(850.556,1)

select round(850.556,1,1)

select round(850.556,-2)

select round(850.556,-1)

---------------------------------------------



create function fn_EmployeeByGender(@gender nvarchar(50))
Returns Table
As
return (select Name,Gender,Salary,departementid from tblEmployee where Gender=@Gender)





select * from fn_EmployeeByGender('male')


select * from dbo.fn_EmployeeByGender('female')


------------------------------------------------------






