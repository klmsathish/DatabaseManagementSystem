create database Department;
use Department;

create table Students
(Student_id int Primary key,
Gender varchar(5),
Date_of_birth date,
First_name varchar(25) not null,
Middle_name varchar(25) not null,
Last_name varchar(25) not null,
other_student_details varchar(50),
check(Gender = "M" or Gender = "F"));

create  table Courses_offered
(Course_offering_id int primary key,
Course_offering_name varchar(25) not null,
other_course_offering_details varchar(50));

create table Courses_scheduled
(Course_schedule_ID int primary key,
other_course_schedule_details varchar(50),
course_offering_id int,
foreign key(course_offering_id) references Courses_offered(Course_offering_id));

create table Student_Course_Registrations
(Student_ID int ,
course_schedule_id int ,
primary key(Student_ID,course_schedule_id),
foreign key(Student_ID) references Students(student_id),
foreign key(course_schedule_id) references Courses_scheduled(Course_schedule_ID));

insert into Courses_offered values(1,"c","quarter 1");
insert into Courses_offered values(2,"c++","quarter 2");
insert into Courses_offered values(3,"JAva","quarter 3");
insert into Courses_offered values(4,"Python","quarter 1");
insert into Courses_offered(Course_offering_id,Course_offering_name) values(5,"IOT");
insert into Courses_offered values(6,"ENglish","quarter 2");
set foreign_key_checks = 0;
drop table Students; 
set foreign_key_checks = 1;
delete from Courses_offered where Course_offering_name = "c++";
select * from Courses_offered;
update Courses_offered
set Course_offering_name = "Problem Solving in C" where Course_offering_name = "C";
select * from Courses_offered;
update Courses_offered
set other_course_offering_details = "Quarter 1 " where Course_offering_name = "ENgish";

 