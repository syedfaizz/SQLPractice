----INDEX-----
create table tblEmp(
id int primary key,
name varchar (50),  
salary int,
gender varchar (40), 
city varchar (50) 
)

Execute sp_helpindex tblEmp 

insert into tblEmp values (3,'Ram',4500,'male','Canada')
insert into tblEmp values (1,'Sai',5500,'male','Mumbai')
insert into tblEmp values (4,'Raj',6500,'male','kurnool')


select * from tblEmp


create Clustered Index IX_tblEmp_gender
on tblEmp (gender ASC)

create Clustered Index IX_tblEmp_salary
on tblEmp (salary ASC)



create NonClustered Index IX_tblEmp_name
on tblEmp(name)

create NonClustered Index IX_tblEmp_city
on tblEmp(city)






-------functions--------

CREATE TABLE Employee7(

EmpID int PRIMARY KEY,

FirstName varchar(50) NULL,
LastName varchar(50) NULL, 
Salary int NULL,
Address varchar(100) NULL,
)


insert into Employee7 (EmpID, FirstName, LastName, Salary, Address)

Values (1, 'Mike', 'Chaua', 22000, 'Detroit');

Insert into Employee7 (EmpID, FirstName, LastName, Salary, Address)

Values (2, 'Aron', 'Kuax', 15000, 'Rochester');

Insert into Employee7 (EmpID, FirstName, LastName, Salary, Address)

Values (3, 'Betty', 'Samon', 19000, 'Novi');

Insert into Employee7 (EmpID, FirstName, LastName, Salary, Address)

Values (4, 'Daniel', 'Kate', 19000, 'Troy');

select * from Employee7

Create function fnGetEmpFullName
(
@FirstName varchar(50),
@LastName varchar(50)
)
returns varchar(101)
As
Begin return (Select @FirstName + ' '+ @LastName);
end

select dbo.fnGetEmpFullName (FirstName,LastName) as Name, Salary from Employee7 |
