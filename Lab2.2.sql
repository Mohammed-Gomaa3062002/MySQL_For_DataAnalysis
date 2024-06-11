-- use Database ITI 
use ITI; 

--join btw two tables :) ''
select St_Fname as [Student Name], Dept_Name as [Department Name], d.Dept_Id
from Student S, Department D
where D.Dept_Id = S.Dept_Id order by d.Dept_Id desc --if u delete this row u will get cross join 
--inner join 

--student name and info about department :)
select St_Fname as [Student Name], D.*
from Student S, Department D
where D.Dept_Id = S.Dept_Id order by d.Dept_Id desc --if u delete this row u will get cross join 

--student name and info about department :)
-- use inner join --> on 
select St_Fname as [Student Name], D.*
from Student S inner join Department D
on D.Dept_Id = S.Dept_Id order by d.Dept_Id desc --if u delete this row u will get cross join 
--inner join 

--student name and info about department :)
-- left outer join 
select St_Fname+' '+St_Lname as [Student Name], D.*
from Student S left outer join Department D
on D.Dept_Id = S.Dept_Id order by d.Dept_Id desc --if u delete this row u will get cross join 

--student name and info about department :)
-- left outer join 
select St_Fname+' '+St_Lname as [Student Name], D.*
from Student S right outer join Department D
on D.Dept_Id = S.Dept_Id order by d.Dept_Id desc --if u delete this row u will get cross join 

--self join 'SelfRelationShip'
select X.St_Fname [Student Name],Y.St_Fname as [supervisor Name]
from Student X, Student Y
	where Y.St_super = x.St_Id

--self join 'SelfRelationShip'
select X.St_Fname [Student Name],Y.*
from Student X, Student Y
	where Y.St_super = x.St_Id

--select from Multi tables
select St_Fname, Crs_Name,Grade 
from Student S, Stud_Course SC , Course C 
	where S.St_Id = SC.St_Id and C.Crs_Id = SC.Crs_Id

/* use inner join btw mutli tables 
look inner join just work on two table so u have to dealing with 
two tables and u will get another table after join 
and use this table to join it with another*/ 
select St_Fname, Crs_Name,Grade 
from Student S inner join Stud_Course SC 
	on S.St_Id = SC.St_Id
	inner join 
	Course C 
	on C.Crs_Id = SC.Crs_Id 

select St_Fname, Dept_Name, Crs_Name,Grade 
from Student S inner join Stud_Course SC 
	on S.St_Id = SC.St_Id
	inner join 
	Course C 
	on C.Crs_Id = SC.Crs_Id 
	inner join 
	Department D 
	on D.Dept_Id = S.Dept_Id 

---------------------------------------------------------
--join DML 
---join with update 
update SC
	set Grade+=1
from Student S ,Stud_Course SC
where S.St_Id = SC.St_Id and St_Address = 'Cairo'

--join and insert 
--join btw two tables :) ''
select St_Fname as [Student Name], Dept_Name as [Department Name], d.Dept_Id
into Newdatabase
from Student S, Department D 
where D.Dept_Id = S.Dept_Id order by d.Dept_Id desc --if u delete this row u will get cross join 
--inner join 

--show Newdatabase 
select * 
from Newdatabase

