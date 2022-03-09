--Constrains--

--For Identity--

CREATE TABLE new_employees  
(  
 id_num int IDENTITY(1,1),  
 fname varchar (20),  
 minit char(1),  
 lname varchar(30)  
);  
  
INSERT new_employees  
   (fname, minit, lname)  
VALUES  
   ('Karin', 'F', 'Josephs');  
  
INSERT new_employees  
   (fname, minit, lname)  
VALUES  
   ('Pirkko', 'O', 'Koskitalo'); 

   select * from new_employees

   --for Unique--
 CREATE TABLE students  
(  
S_Id int NOT NULL UNIQUE,    
FirstName varchar (40),  
City varchar (30)  
)

INSERT   students 
   (S_Id,FirstName,City)  
VALUES  
   ('1', 'Ravi', 'chennai'); 
   
   INSERT   students 
   (S_Id,FirstName,City)  
VALUES  
   ('1', 'Raj', 'pune');  --error--
 INSERT   students 
   (S_Id,FirstName,City)  
VALUES  
   ('2', 'Ram', 'mumbai');  --noerror--

   select * from students

   --using Primary Key--
    --using Primary Key --
   create table department(d_id int primary key,d_name varchar(40),d_address varchar(50))--parent table--
insert department values(10,'.net','hyderabad'),(20,'java','pune'),(30,'python','mubai')
create table employee2(emp_id int,emp_name varchar(40),emp_salary money,
d_id int foreign key references department(d_id))--child class--
select*from department 
select*from employee2
insert employee2 values(101,'faizz',36450,10)
insert employee2 values(102,'arjun',25410,20)
insert employee2 values (103,'Amit',56412,30)

 
