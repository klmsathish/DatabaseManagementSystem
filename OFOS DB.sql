create database ofos;
use ofos;
create table customer
(
id int primary key not null,
Name_c varchar(40),
Address varchar(30),
pwd varchar(20),
cart varchar(50),
payment varchar(25)
);
describe customer;


create table foody
(
app_id int primary key not null,
ip_location varchar(20),
c_no int,
foreign key(c_no)
references customer(id)
);
describe foody;



create table menu
(
menu_no int primary key not null,
no_items int,
price int
);
describe menu;

create table orders
(
o_no int primary key not null,
track_id varchar(30),
c_no int,
foreign key(c_no)
references customer(id),
menu_id int,
foreign key(menu_id)
references menu(menu_no)
);
describe orders;

create table restaurant
(
r_id int primary key not null,
orders_prepared int,
orders_recieved int,
orders_delivered int,
o_id int,
foreign key(o_id)
references orders (o_no)
);
describe restaurant;

insert into customer
values(1,"Chan","123,abc","1234a","3items","Offline"),
      (2,"Kiki","124,def","4321a","4items","Online"),
	  (3,"Varma","125,abc","3456a","13items","Offline"),
      (4,"Roshan","126,def","7890a","34items","Online");

select*from customer;

insert into foody
values(24,"45hf",1),
(67,"78jk",2),
(66,"78ch",3),
(76,"78kc",4);
select * from foody;

insert into menu
values(23,4,780),
(21,5,620),
(20,5,580),
(24,5,780);
select*from menu;

insert into orders
values(34,"456yt",2,23),
(45,"43ert",1,21),
(43,"42uyt",3,20),
(48,"43hgf",4,24);
select*from orders;

insert into restaurant
values(12,34,45,56,43),
(32,89,90,87,34),
(34,88,91,88,45),
(38,87,92,89,48);
select*from restaurant;

