/*
Types of joins 
 .cross join 
	* certesian product 
 .inner join 
	* equi join 
 .outer join 
	* left outer join 
	* right outer join 
	* full outer join 
 .self join 
	* unary relationship 
*/
--use Database :) 
use ITI; 
--use CompanyDB; 
--select from diff table "certesian product"
select St_Fname,Dept_Name
from Student,/*cross join*/ Department 

--use pKey ,FKey
select St_Fname,Dept_Name
from Student S inner join Department D
	on/*where*/ D.Dept_Id = S.Dept_Id -- 'equi join', u will get acctual match columns btw two tables :)  
	/*, --> where | inner join --> on*/ 
	 
--Left outer join 
select St_Fname,Dept_Name
from Student S left outer join Department D
	on/*where*/ D.Dept_Id = S.Dept_Id 
 
--Right outer join 
select St_Fname,Dept_Name
from Student S right outer join Department D
	on/*where*/ D.Dept_Id = S.Dept_Id 

--Full outer join  'ROJ + LOJ' 
select St_Fname,Dept_Name
from Student S right outer join Department D
	on/*where*/ D.Dept_Id = S.Dept_Id 

-- self join -->'self relationship' :) 
/* select X.Fname as EmpName , Y.Fname as [super name]
from Employee X, Employee Y
where Y.Fname = X.Fname */