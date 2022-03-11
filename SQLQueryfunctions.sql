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