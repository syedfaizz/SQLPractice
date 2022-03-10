----clauses---
create table emp1
(
	emp_id int identity(1,1) primary key,
	emp_name varchar(40) not null,
	emp_salary int not null,
	start_date datetime
)

select * from emp1

insert into emp1(emp_name,emp_salary,start_date)values('Ravi',35000,GETDATE()) 
insert into emp1(emp_name,emp_salary,start_date)values('Raj',4500,GETDATE()) 
insert into emp1(emp_name,emp_salary,start_date)values('faizz',50000,GETDATE()) 
insert into emp1(emp_name,emp_salary,start_date)values('sam',65000,GETDATE())

select * from emp1 order by emp_salary
select * from emp1 order by emp_salary asc
select * from emp1 order by emp_salary desc


select emp_salary from emp1 group by emp_salary

select emp_id, sum(emp_salary) as 'Total salary' from emp1 group by emp_id

select emp_id, sum(emp_salary) as 'Total salary' from emp1 group by emp_id Having sum(emp_salary)>35000



