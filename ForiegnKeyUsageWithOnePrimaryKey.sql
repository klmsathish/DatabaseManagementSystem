create database company;
create table employee( Employee_no int primary key, F_name varchar(25) not null,L_name varchar(25),age int not null ,address varchar(50), salary int , check(salary >10000));
create table project( Project_id int primary key,Project_name varchar (25) not null unique ,location varchar(50),duration int ,check(duration<30),employee_id int,foreign key(employee_id) references employee(Employee_no)); 
create database univ;
create table student(unique_number int,Fname varchar(20) not null, Lname varchar(20) not null,age int,Adress varchar(25),Primary key(unique_number));
create table Course(course_code int ,course_title varchar(30) not null unique,credit int,unique_id int,primary key(course_code), foreign key(unique_id) references student(unique_number));
