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
