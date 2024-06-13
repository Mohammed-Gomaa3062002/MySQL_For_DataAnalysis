--Lab3.1 "AGGREGATE FUNCTION" NOTES :) 
/* 
	we will talk about Aggregate function
	Agg_Func
		.Count
		.Max 
		.Min
		.Avg
		.Sum

	select Sum(Salary)
	from Employee 62500 

	select Min(Salary),Max(Salary)
	from Employee 1000 9000
	
	select Count(eid)
	from Employee 15 

	count(*) --> 15 count no of rows 
	Count(eid) --> count no of rows cause primary key not null so u did not get null val in this col 
	Count(emane) -->14 
	
	agg functions did not count null values in calc 

	so if u use 

	select from Avg(salary)
	from Employee 
	Avg = sum(Salary)/Count(Salary)
	did not count null values in calc 

	select Min(salary),did 
	Form Empployee --> its wrong :( 
	u have to groub by did so 

	display min salary in each department :)
	select Min(salary),did 
	Form Empployee
	group by did 
	restult 
	1000  10
	2000  20 
	1500  30 

	count no of employees into each city 
	select Count(eid),Address 
	from Employee 
	group by Address 

	can i use where condition with group by ??! 

4	select Count(eid),Address 
1	from Employee 
2	where did in (10,30)
3	group by Address  

	select Min(salary),did 
	from Employee 
	Where Address like '_a%'
	group by did 

	'Where condition affect on rows not groups :)'
	
	what if u want to use condition after grouping
	
	select Sum(salary),did 
	from Empoyee 
	group by did 
	where sum(salary)>= 22000 :( its wrong u can use where with agg 
	where affects on set of rows not just one row 
	'instead use having for condition'
	so 

	select Sum(salary),did 
	from Empoyee 
	group by did 
	having sum(salary)>= 22000

	its not necessary agg in select its same agg on having
	select Sum(salary),did 
	from Empoyee 
	group by did 
	having Count(eid)>5
*/ 

