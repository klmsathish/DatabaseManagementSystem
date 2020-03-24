create database sales;
use sales;
create table customer( Cust_name char(25),Cust_id int primary key unique, Cust_address varchar(25), Cust_contact int);
insert into customer values("Sathish",2,"Porur",978);
insert into customer values("Santhosh",3,"Porur",98);
insert into customer values("Swaran",4,"Porur",97);
insert into customer values("Karan",9,"Porur",91);
insert into customer values("Sivant",10,"Porur",90);
delete from customer ;
select * from customer