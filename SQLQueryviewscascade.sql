------Views-----
CREATE TABLE Departments
(
  ID INT PRIMARY KEY,
  Name VARCHAR(50)
)
INSERT INTO Departments VALUES(1, 'IT')
INSERT INTO Departments VALUES(2, 'HR')
INSERT INTO Departments VALUES(3, 'Sales')
-- Create Employee Table
CREATE TABLE Employes
(
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Gender VARCHAR(50),
  DOB DATETIME,
  DeptID INT
)

-- Populate the Employee Table with test data
INSERT INTO Employes VALUES(1, 'Pranaya', 'Male','1996-02-29 10:53:27.060', 1)
INSERT INTO Employes VALUES(2, 'Priyanka', 'Female','1995-05-25 10:53:27.060', 2)
INSERT INTO Employes VALUES(3, 'Anurag', 'Male','1995-04-19 10:53:27.060', 2)
INSERT INTO Employes VALUES(4, 'Preety', 'Female','1996-03-17 10:53:27.060', 3)
INSERT INTO Employes VALUES(5, 'Sambit', 'Male','1997-01-15 10:53:27.060', 1)
INSERT INTO Employes VALUES(6, 'Hina', 'Female','1995-07-12 10:53:27.060', 2)

CREATE VIEW VWAllEmployees1 
AS 
SELECT * FROM Employes

CREATE VIEW vwAllEmployees2 
AS 
SELECT ID, Name, Gender, DOB, DeptID 
FROM Employes
 
 SELECT * from vwAllEmployees1



------------ Delete Update cascade-----------
create table stu
(
	stu_ID int primary key,
	stu_Name varchar (55)
)
insert into stu(stu_ID,stu_Name)values(1,'Ram')
insert into stu(stu_ID,stu_Name)values(2,'Ravi')
insert into stu(stu_ID,stu_Name)values(3,'Raj')

create table orders
(
	order_ID int identity(1,1) primary key,
	stu_ID int,
	product_items varchar(55),
	foreign key (stu_ID) references stu(stu_ID)
	On delete set null
)
insert into orders(stu_ID,product_items)values(1,'cheese')
insert into orders(stu_ID,product_items)values(2,'maggie')
insert into orders(stu_ID,product_items)values(3,'cloths')

select * from stu
select * from orders
delete from stu where stu_ID=3

create table orders2
(
	order_ID int identity(1,1) primary key,
	stu_ID int,
	product_items varchar(55),
	foreign key (stu_ID) references stu(stu_ID)
	On update set null
)
update orders set stu_ID=2 where order_ID=1
