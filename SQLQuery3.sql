----clauses---
create database Employeepayroll2
create table Employeepay(

E_id int not null,
E_name varchar(20),
E_salary int,
E_age int,
E_gender varchar(20),
E_starttime varchar(20),
primary key(E_id)
);


insert into Employeepayroll2 values(
1,'Sam',95000,45,'Male','25-06-2020'
);

insert into Employeepayroll2 values(
2,'BOb',80000,21,'Male','26-06-2020'
);

insert into Employeepayroll2 values(
3,'Anne',90000,25,'Female','27-06-2020'
); 

insert into Employeepayroll2 values(
4,'Julin',55000,32,'Male','28-06-2020'
);
select * from Employeepayroll2

---Where---
select * from Employeepayroll2 where E_id=2

update Employeepayroll2 set  E_salary= 60000 where E_id =2

---order by---
select * from Employeepayroll2 order by E_salary asc

select * from Employeepayroll2 order by E_name desc


----group by---
select E_name from Employeepayroll2 group by E_name order by E_name

select E_name, sum(E_salary)as Totalsalary from Employeepayroll2 group by E_age Having sum(E_salary)>91000


---top n---

select top(2)*from Employeepayroll2 
select top(3) * from Employeepayroll2
select top(3) * from Employeepayroll2 order by E_salary asc



