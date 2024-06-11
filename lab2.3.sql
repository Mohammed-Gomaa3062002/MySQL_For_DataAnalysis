use ITI; 

--show student`s first name 
select St_Fname
from Student

select St_Fname
from Student
	where St_Fname is not null

-- replace null values 
select isnull(St_Fname, ' ')
from Student 
-- replace null with Lname 
select isnull(St_Fname, St_Lname)
from Student 
--show any info about student coalesce take an array 
select coalesce(St_Fname, St_Lname,'has no name')
from Student 

--concate string & numbers 
select St_Fname + ' ' +St_Age --u will get an error :(
from Student 

select isnull(St_Fname,' ') + ' ' +convert(char(2),St_Age) 
from Student 

select coalesce(St_Fname,St_Lname,' ') + ' ' +convert(char(2),St_Age) 
from Student 

select coalesce(St_Fname,St_Lname,' ') + ' ' +convert(char(2),isnull(St_Age,0)) 
from Student  

/*is not good solution nested functions affect on performance,
so u have to use 'concat function' */
select concat(St_Fname,' ',St_Age) --as a column:) 
from Student 
--concate concate btw str & Numbers and replace null with empty string :)

--if u looking for about string like 
select * 
from Student
	where St_Fname like 'ahmed'

select * 
from Student
	where St_Fname like 'a%' --start with char a
	
select * 
from Student
	where St_Fname like '%a' --end with char a 

select * 
from Student
	where St_Fname like '%a%' --string have char a 

select * 
from Student
	where St_Fname like '_a%' --second litter char a 

	--patterns
	/*
		a%h
		%a_
		ahm%
		[ahm]%
		[^ahm]%
		[a-h]%  --> range 
		[^a-h]% 
		[346]%
		%[%]    --> string end with % 
		%[_]%    
		[_]%[_]
	*/ 
	 
--order by num of column in select
select St_Fname,St_Age
from Student order by 2 desc 

select St_Fname,St_Age
from Student order by St_Age,St_Fname desc

