--LAB 3.1 Practice "AGG FUNCTIONS" 
use ITI; 

-- salary column 
select Salary 
from Instructor

--Sum of Salary Column 
Select Sum(Salary) as sum_salary
from Instructor

--min_salary & max_sala 
select Min(Salary) as Min_SAl,Max(Salary) as MAX_SAl
from Instructor

--Count 
select Count(*) ,Count(St_Id),Count(St_Fname),Count(St_Age)
from Student

--Avg 
Select Avg(St_Age)  
from Student --to solve this problem replace null value with zero

Select Avg(isnull(St_Age,0))   
from Student

Select Sum(St_Age)/Count(*) as Avg 
from Student

--------------------------------------
select sum(Salary),Dept_Id 
from Instructor --syntax error Grouping with Agg function

select sum(Salary),Dept_Id 
from Instructor
group by Dept_Id

--if u want to display dept_id & dept_name 
/* select Sum(salary),Dept_Id,Dept_Name
from Instructor 
group by Dept_Id */

--so use join 

select Sum(salary),D.Dept_Id,Dept_Name /* there is a rule if there are columns in select not agg, 
u have to group it*/
from Instructor i inner join Department D 
on D.Dept_Id = i.Dept_Id
group by D.Dept_Id,Dept_Name --there is no relation between group by and join 

select AVG(St_Age),St_Address,Dept_Id
from Student 
group by St_Address,Dept_Id --it will be grouped by accutally by two this columns :) 

select Avg(St_Age),St_Id
from Student --there is no meaning for this Query 
group by St_Id

-- affect of Where Cond :)
select Sum(St_Age),Dept_Id
from Student
group by St_Id

select Sum(Salary),Dept_Id 
from Instructor 
where Salary > 1000 --where cond affects on rows 
Group by Dept_Id 

-- 
select distinct Ins_Degree,Count(Ins_Degree)
from Instructor
group by Ins_Degree

-----------------------------------
--Subqueries 
---- output queriy to another subQ 

select * 
from student 
where St_Age < avg(St_Age)

--comparision between each row by avg 
select * 
from student 
where St_Age < (select avg(St_Age) from student)

select *, (select count(St_Id) from student)
from Student

select Dept_Id
from Department where Dept_Id in (select distinct(Dept_Id)
							from Student 
							where Dept_Id is not null)

select distinct(D.Dept_Id) 
from Department D ,Student S
where D.Dept_Id = S.Dept_Id

-- sub + DML 
delete from Stud_Course 
where St_Id = 1 

--degrees for students 
-- delete 
select * from Stud_Course 
where St_Id in (select St_Id from Student
				where St_Address = 'Cairo')
				
------------------------------------------------
--union family 
--union all union intersect except 

--batch 
select St_Fname 
from Student 

select Ins_Name
from Instructor

-- its not join 
select St_Fname 
from Student 
union all 
select Ins_Name
from Instructor

--distinct
select St_Fname 
from Student 
union 
select Ins_Name
from Instructor

--intersection
select St_Fname 
from Student 
intersect 
select Ins_Name
from Instructor

--except
select St_Fname 
from Student 
except 
select Ins_Name
from Instructor