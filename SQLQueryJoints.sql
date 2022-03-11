 -------Joints----

 CREATE TABLE candidates(
    id INT PRIMARY KEY IDENTITY,
    fullname VARCHAR(100) NOT NULL
);

CREATE TABLE employees(
    id INT PRIMARY KEY IDENTITY,
    fullname VARCHAR(100) NOT NULL
);

INSERT INTO 
    candidates(fullname)
VALUES
    ('John Doe'),
    ('Lily Bush'),
    ('Peter Drucker'),
    ('Jane Doe');


INSERT INTO 
   .employees(fullname)
VALUES
    ('John Doe'),
    ('Jane Doe'),
    ('Michael Scott'),
    ('Jack Sparrow');


	select * from candidates
	select * from employees

	----inner join----

	SELECT  
    c.id ,
    c.fullname ,
    e.id ,
    e.fullname 
FROM 
    .candidates c
    INNER JOIN employees e 
        ON e.fullname = c.fullname;

		-----Left Join----
		SELECT  
    c.id ,
    c.fullname ,
    e.id ,
    e.fullname 
FROM 
    .candidates c
    LEFT JOIN employees e 
        ON e.fullname = c.fullname;

		-----Right Join----
		SELECT  
    c.id ,
    c.fullname ,
    e.id ,
    e.fullname 
FROM 
    .candidates c
    RIGHT JOIN employees e 
        ON e.fullname = c.fullname;


		-----Full Join-----
		SELECT  
    c.id ,
    c.fullname ,
    e.id ,
    e.fullname 
FROM 
    .candidates c
    FULL JOIN employees e 
        ON e.fullname = c.fullname;
		
	------multiple join------

create table student1(
  id int identity (1,1) primary key,
  first_name varchar(80) not null,
  last_name varchar (80) not null
  );
  
  insert into student1(first_name,last_name) values('Sayed','Faisal')
  insert into student1(first_name,last_name) values('p','Ali')
  insert into student1(first_name,last_name) values('Reddy','Sham')
  select * from student1


   create table  Teacher(
  id int identity (1,1) primary key,
  first_name varchar(80) not null,
  last_name varchar (80) not null
  );

  insert into Teacher(first_name,last_name) values('Ravi','Sharma')
  insert into Teacher(first_name,last_name) values('Pavan','Reddy')
  insert into Teacher(first_name,last_name) values('Raj','Kapoor')

  select * from Teacher
  
   create table Subject(
  id int identity (1,1) primary key,
  name varchar(80) not null,
  )
 insert into Subject(name) values('English')
 insert into Subject(name) values('French')
 insert into Subject(name) values('Tamil')

  select * From Subject

 

 select * from student1 as a
 inner join Teacher as b
 on a.id = b.id
 inner join Subject as c
 on b.id=c.id;
	
	------cross join-----

CREATE TABLE Meals(MealName VARCHAR(100))
CREATE TABLE Drinks(DrinkName VARCHAR(100))

INSERT INTO Drinks
VALUES('Orange Juice'), ('Tea'), ('Cofee')
INSERT INTO Meals
VALUES('Omlet'), ('Fried Egg'), ('Sausage')

SELECT *
FROM Meals;
SELECT *
FROM Drinks

SELECT * FROM Meals 
CROSS JOIN Drinks
