create database salary_management;
use salary_management;
create table employees(Employee_ID int primary key , name varchar(50), designation varchar(50),experience varchar(50));
create table deduction(descripancy varchar(50),deducted int,Employee_id int);
create table salary_increment(amount_increased int,hours_of_worktime int,constraints varchar(50),Employee_ID int);
create table salary(Employee_id int, current_salary int);
create table salary_in_hand(employee_id int ,net_salary int primary key, ctc_salary int ,total_savings int);

insert into employees values(01,"RAJA","HR MANAGER","5 yrs");
insert into employees values(02,"PRABHU","GENERAL MANAGER","8 yrs");
insert into employees values(03,"RAHUL","CHIEF EXECUTIVE OFFICER","2 yrs");
insert into employees values(04,"RAJU","LEGAL OFFICER","1 yrs");

insert into deduction values("Ordering Descripency",50000,"02");
insert into deduction values("Relational Descripency",5000,"01");
insert into deduction values("Association Descripency",2500,"03");
insert into deduction values("Assimlation Descripency",15000,"04");

insert into salary_increment values(15000,5,"Over Time",03);
insert into salary_increment values(1500,7,"AGE FACTOR",04);
insert into salary_increment values(5000,8,"Over Time",01);
insert into salary_increment values(7000,9,"Over Time",02);

insert into salary values(02,1000000);
insert into salary values(01,50000);
insert into salary values(03,1000);
insert into salary values(04,980000);

insert into salary_in_hand values(02,100000,1500,5000);
insert into salary_in_hand values(01,1000,9000,1420);
insert into salary_in_hand values(03,4500,1580,15000);
insert into salary_in_hand values(04,25050,100,6450);

