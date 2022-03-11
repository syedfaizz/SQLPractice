-----View----



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