create database university;
use University;
create table University(univ_Name varchar(30) primary key,Location text(30),Ranking int);
insert into University values("SRMC","Porur",5);
insert into University values("SRM","RAMAPURAM",3);
insert into University values("VIT","CHENNAI",4);
create table Faculties(Dept_name varchar(30),Faculties_code int primary key);
insert into Faculties values("Engineering",4);
insert into Faculties values("Medical sciences",5);
create table School(sch_no int primary key,school_name varchar(30),Year_started int);
insert into School values(5,"Computer science",2010);
insert into School values(7,"BDS",2008);
create table Course(course_no int primary key,course_name varchar(30),Year_started int);
insert into Course values(10,"AI",2019);
insert into Course values(65,"ML",2015);
create table Faculty(Faculty_ID int primary key,Faculty_name varchar(30),Faculty_qualification char(20));
insert into Faculty values(50,"Vanitha","Doctrate");
insert into Faculty values(12,"Nirmala","M.Tech");
create table student(unique_number int primary key,Fname varchar(20), Lname varchar(20),age int,Adress varchar(25));
insert into student values (01,"Sathish","Kumar",18,"SRET");
insert into student values (02,"Ananth","M",18,"SRET");
insert into student values (03,"Sivant","Kumar",18,"SRET");

