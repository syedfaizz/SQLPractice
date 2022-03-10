create table employee3
(	
		emp_id int identity(1,1) primary key,
		emp_name varchar(55),
		emp_salary int,
		emp_address varchar(55),
		start_date datetime
		)

		select * from employee3

		insert into employee3(emp_name,emp_salary,emp_address,start_date)values('Ram',500000,'delhi',GETDATE())
insert into employee3(emp_name,emp_salary,emp_address,start_date)values('Rohit',600000,'Mumbai',GETDATE())
insert into employee3(emp_name,emp_salary,emp_address,start_date)values('Ramu',400000,'Chennai',GETDATE())
insert into employee3(emp_name,emp_salary,emp_address,start_date)values('Roy',500000,'pune',GETDATE())
insert into employee3(emp_name,emp_salary,emp_address,start_date)values('Raj',800000,'Uk',GETDATE())


create table company
(	
	comp_id int primary key,
	comp_name varchar(50),
	empy_id varchar(40)
)
select * from company
insert into company(comp_id,comp_name,empy_id)values(1,'KPMG',1)
insert into company(comp_id,comp_name,empy_id)values(2,'CTS',2)
insert into company(comp_id,comp_name,empy_id)values(3,'CGI',3)

select * from employee3
where empy_id=(select empy_id from company where comp_name='CTS' and comp_id=2)

select * from employee3
where empy_id In(select empy_id from company where comp_name='CGI')
