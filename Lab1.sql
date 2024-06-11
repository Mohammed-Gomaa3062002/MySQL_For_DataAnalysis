/*use database "ITI"*/
use ITI;

--select table student :)
Select * from student;

--insert into student table
insert into Student(St_Id,St_Fname)
values(20102662,'Ali'); 

-- DDL 
-- create table :) 
create table Employee
(
	eid int primary key, 
	ename varchar(50) not null,
	eage int, 
	eadd varchar(50) default 'cairo', 
	hiredate date default getdate(), 
	Dnum int
)
/* if u want to add or remove column, or change data type
from table u have to use "alter"*/
alter table Employee add sal int
--change data type 
alter table Employee alter column sal bigint --tinyint
--drop column 
alter table Employee drop column sal 

--drop table from database 
drop table Employee 

--------------------------------
--DDL 
--insert update delete 
insert into emp 
values(4,'ali',500)
--insert multi rows 
insert into emp(emp_id,emp_name,sal)
values(1,'mohamed',400),(2,'gomaa',1000),(3,'elsafy',2000)

--update data 
update emp 
	set emp_name = 'gomaa'
where emp_id = 1 
--increament sal 
update emp 
	set sal+=1000
where sal < 500
--drop row from table 
delete from emp 
	where emp_id = 1; 
--drop column 
alter table emp drop column sal
--set column with null 
update emp 
	set emp_name = NULL 

--------------------------------
--DQL 
--show table emp
select St_Fname,St_Address from Student
	where St_Age > 24 

select St_Fname,St_Address,St_Age from Student
	where St_Age > 24  order by St_Age desc -- asc
	
select St_Fname+' '+St_Address /*as*/ [full name] from Student

select * 
from student 
	where St_Fname != NULL /*there is a problem u suppose null is a value u can comparsion it with another value
	so u have to use empty single quote '' or 'is not null' keyword, null is not a value*/

--if u want to select unique name use --> distinct 
select distinct St_Fname from Student
	where St_Fname is not NULL

-- using or, in('--','--')
select * 
from Student 
	where St_Address in('Alex','Cairo') and (St_Age between 20 and 25)

--Mapping 
--Create DB 
--DDL 
--DML 
--DQL 
