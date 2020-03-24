delimiter $$
create procedure userinsert(IN username varchar(100),In age int)
begin
insert into users(username,age) values(username,age);
END;
$$ 
Delimiter ;
create table users(username varchar(50),age int);
call userinsert("Joe",21);
select * from users;
delimiter $$
create procedure updatedept(IN deptno varchar(100),In deptname  int)
begin
insert into users(username,age) values(username,age);
END;
$$ 
Delimiter ;


