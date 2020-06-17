create database students       

Alter database students Modify name = Studentsq

Drop database Studentsq

create table tblperson
( ID int Not Null Primary Key,
Name nvarchar(50)  Not Null, Email nvarchar(50) Not Null,GenderID int 
)

Create Table tblGender
(ID int Not Null Primary Key,
Gender nvarchar(50))


Alter table tblperson 
add constraint tblperson_GenderID_FK  FOREIGN KEY (GenderId) references tblGender(Id)

Insert into tblPerson(ID,Name,Email) values(5,'Sam','s@s.com')
Insert into tblPerson(ID,Name,Email,GenderId) values (6,'Dan','d@d.com',1)


select * from tblperson
select * from tblGender



create table Test
(
Id int,
Name varchar(20),
Gender varchar(20)
)
insert into Test values(1,'Rajendra','Male')
insert into Test values(2,'Vani Siri','Female')
insert into Test values(3,'Mohan Reddy','Male')
insert into Test values(4,'Ragini','Female')

select * from Test



ALTER TABLE { TABLE_NAME }
ADD CONSTRAINT { CONSTRAINT_NAME }
DEFAULT { DEFAULT_VALUE } FOR { EXISTING_COLUMN_NAME }


ALTER TABLE tblPerson
ADD CONSTRAINT DF_tblPerson_GenderId
DEFAULT 1 FOR GenderId


Insert into tblPerson(ID,Name,Email) values(7,'omar','o@o.com')  



ALTER TABLE { TABLE_NAME } 
ADD { COLUMN_NAME } { DATA_TYPE } { NULL | NOT NULL } 
CONSTRAINT { CONSTRAINT_NAME } DEFAULT { DEFAULT_VALUE }





--To drop a constraint

ALTER TABLE { TABLE_NAME } 
DROP CONSTRAINT { CONSTRAINT_NAME }

ALTER TABLE tblPerson
DROP CONSTRAINT DF_tblPerson_GenderId

