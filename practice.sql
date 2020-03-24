create database joints;
use joints;
create table TABLE_A(ID int primary key, Name varchar(25));
create table TABLE_B(ID int primary key, Name varchar(25)); 
insert into TABLE_A values(1,"Pirate"),(2,"Monkey"),(3,"Ninja"),(4,"Spaghetti");
insert into TABLE_B values(1,"Rutabaga"),(2,"Pirate"),(3,"Darth Vader"),(4,"Ninja");
select * from TABLE_A;
select * from TABLE_B;
select * from TABLE_A A inner join TABLE_B B ON A.Name = B.Name union
select * from TABLE_A A left outer join TABLE_B B ON A.Name = B.Name union 
select * from TABLE_A A right join TABLE_B B ON A.Name = B.Name;
select * from TABLE_A A left join TABLE_B B ON A.Name = B.Name where B.name is null;
select * from TABLE_A A right join TABLE_B B ON A.Name = B.Name where A.name is null;
select * from TABLE_A A CROSS join TABLE_B B ON A.Name = B.Name;


select * from TABLE_A A left join TABLE_B B ON A.Name = B.Name where B.name is null union
select * from TABLE_A A right join TABLE_B B ON A.Name = B.Name  where A.name is null;

