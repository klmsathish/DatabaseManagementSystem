create database school;
create table student1( student_no int , F_name varchar(25) not null,L_name varchar(25),age int not null ,address varchar(50), primary key(student_no,F_name));
create table teacher( teacher_id int ,teacher_name varchar (25) not null unique ,location varchar(50),age int ,student_no int,F_name varchar(50),index(student_no),primary key(teacher_id),foreign key(student_no,F_name)  references student1(student_no,F_name)); 
create database sales;
use sales;
create table customer( Cust_name char(25),Cust_id int primary key unique, Cust_address varchar(25), Cust_contact int);
insert into customer values("Sathish",2,"Porur",978);
insert into customer values("Santhosh",3,"Porur",98);
insert into customer values("Swaran",4,"Porur",97);
insert into customer values("Karan",9,"Porur",91);
insert into customer values("Sivant",10,"Porur",90);

create table ord(Order_id int primary key unique, Ord_date date,Ord_amt int not null, Ord_quantity int not null,check( Ord_quantity>1),customer_id int,foreign key(customer_id) references customer(Cust_id));
describe ord;
set foreign_key_checks =0;
drop table ord;
set foreign_key_checks =1;
describe ord;