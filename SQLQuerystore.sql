
------Store Procedure-----

create table tblemployee(

Empid int not null,
EmpName varchar(20),
Salary int,
Age int,
Gender varchar(20),
 Department varchar(20),

primary key(Empid)
);


insert into tblemployee values(
1,'Sam',95000,45,'Male','Operations'
);
insert into tblemployee values(
2,'BOb',80000,21,'Male','support'
);
insert into tblemployee values(
3,'Anne',90000,25,'Female','Analytics'
); 
insert into tblemployee values(
4,'Julin',55000,32,'Male','Operations'
);
insert into tblemployee values(
5,'Raj',45000,30,'Male','Operations'
);
insert into tblemployee values(
6,'Riya',35000,22,'Female','Analytics'
);
insert into tblemployee values(
7,'priya',30000,22,'Female','support'
);
insert into tblemployee values(
8,'Tarun',25000,23,'Male','support'
);
insert into tblemployee values(
9,'John',28000,25,'Male','Analytics'
);
insert into tblemployee values(
10,'Ravi',24000,25,'Male','Operations'
);

select * from tblemployee


GO
CREATE PROCEDURE spGetEmployees
AS
BEGIN
Select  EmpName, Age, Salary from tblemployee;
End

EXEC spGetEmployees


GO
CREATE PROCEDURE spGetEmployees_pay2
AS
BEGIN
Select  *FROM tblemployee  where Age between 20 and 30
End

 EXEC spGetEmployees_pay2


 GO
CREATE PROCEDURE spGetEmployees_pay3
AS
BEGIN
Select  *FROM tblemployee  where Salary>30000
End

 EXEC spGetEmployees_pay3






select * from tblemployee where Age<30;
select * from tblemployee where Salary>80000;
select * from tblemployee where Salary<30000;



/* update employee record */
Create procedure spUpdateEmployeePayroll
(
@name varchar(20),
@salary money
)
As 
Begin try
update employee set salary=@salary where name=@name
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH  

exec spUpdateEmployeePayroll
'Debdutt',85000