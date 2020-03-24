create database TAble1;
use table1;
create table Students_TAble(roll_no int ,name varchar(50),subject varchar(50),primary key(roll_no,subject));
insert into students_table values(101,"Akon","OS");
update students_table set subject = "CN" where name = "Akon";
insert into students_table values(103,"Ckon","JAVA");
insert into students_table values(102,"Bkon","C");
insert into students_table values(102,"Bkon","C++");
select * from students_table where subject = "CN";


