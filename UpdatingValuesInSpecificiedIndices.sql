create database company;
use company;
create table Employee(employee_no int,F_name char(50),L_name char(50),Age int,Address char,Salary int);
insert into Employee(employee_no ,F_name,L_name ,Age ,Salary ) values (4,"Ram","Prasad",27,1000);
insert into Employee(employee_no ,F_name,L_name ,Age ,Salary ) values (9,"hari","Prasad",2,100);
insert into Employee(employee_no ,F_name,L_name ,Age ,Salary ) values (15,"siva","Prasad",7,1050);
update Employee 
set F_name = "Vanitha" Where employee_no = 4;
select * from Employee;
update Employee 

set F_name = "Vanitha";
select * from Employee;
