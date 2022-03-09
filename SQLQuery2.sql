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

 
