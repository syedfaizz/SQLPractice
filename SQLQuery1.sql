create database employeepayroll
create table employee(

e_id int not null,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20),
primary key(e_id)
);

insert into employee values(
1,'Sam',95000,45,'Male','Operations'
);
insert into employee values(
2,'BOb',80000,21,'Male','support'
);
insert into employee values(
3,'Anne',90000,25,'Female','Analytics'
); 
insert into employee values(
4,'Julin',55000,32,'Male','Operations'
);

insert into employee values(
5,'Raj',45000,30,'Male','Operations'
);

insert into employee values(
6,'Riya',35000,22,'Female','Analytics'
); 

insert into employee values(
7,'Piya',30000,22,'Female','support'
); 

insert into employee values(
8,'Tarun',25000,23,'male','support'
); 

insert into employee values(
9,'John',28000,25,'male','Analytics'
);
insert into employee values(
10,'Ravi',24000,25,'male','Operations'
);
 



select e_name from employee;

select e_name,e_salary,e_gender from employee;
 
select * from employee


select distinct e_gender from employee;

select * from employee where e_age<30;



update employee set e_salary=60000 where e_id=4




