--select LTRIM(' ahmed') as nameL;
--select RTRIM('ahmed  ') as nameR;

--select LOWER('AHMED') as nameLower;
--select UPPER('ahmed') as nameUpper;

--select REVERSE('ABCD') as reversechar;
--select len('Ahmed') as nameLen;

--select ABS(-10.5);
--select CEILING(10.2);
--select CEILING(-10.2);

--select FLOOR(15.2);
--select FLOOR(-15.2);

--select POWER(2,3);
--select SQUARE(9);
--select SQRT(81);

--select ASCII('A');

--select CHAR(65);


--Declare @start int
--set @start = 65
--while(@start<=90)
--begin
--print Char(@start)
--set @start+=1
--End;

--Declare @start char
--declare @temp int
--set @start = 'A'
--while(@start<='Z')
--begin
--print concat(@start,' ',Ascii(@start))
--set @temp=ascii(@start)+1
--set @start=char(@temp)
--End;

--select rand()

--select rand()*100

--select FLOOR(RAND()*1000);

--declare @count int
--set @count = 1
--while(@count<=10)
--begin
--print floor(rand()*100)
--set @count+=1
--end

--select round(850.556,1,0)

--select round(850.556,1,1)

--create function fnEmployeeByGender(@gender nvarchar(50))
--returns Table
--as 
--return (select name,Gender,Salary from tblemployees where Gender=@gender);

--select * from dbo.fnEmployeeByGender('m')

--alter table tblEmployees alter column Gender nvarchar(50);

--create view vwEmolyeeByDepartment
--as 
--select Gender,Salary from tblEmployees
--inner Join tblperson on tblEmployees.Gender=tblperson.GenderID;

--select * from dbo.vwEmolyeeByDepartment;

sp_helptext vwEmolyeeByDepartment;