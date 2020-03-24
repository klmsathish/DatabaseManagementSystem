create database school;
use school;
create table course(course_code int primary key, course_title char(50) not null unique, credit int ,check(credit= 3 or credit = 4));
insert into course values(01,"AI",3);
insert into course values(02,"CS",4);
select * from course;