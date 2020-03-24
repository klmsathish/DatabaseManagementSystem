create database RailwaySystem;
use RailwaySystem;
create table PASSENGER(NAME varchar(25) primary key , TRAIN_ID int, FROM_STATION varchar(50), TO_STATION varchar(50) ,NO_OF_SEATS int , DATE date, foreign key (TRAIN_ID) references TRAIN(TRAIN_ID));
create table TRAIN(TRAIN_ID int primary key ,TRAIN_NAME varchar(50),TRACK_NO int, foreign key(TRACK_NO) references TRACK(TRACK_NO));
create table TRACK(TRACK_NO int primary key,CONNECT_FROM varchar(50),CONNECT_TO varchar(50), STATION_NO int ,foreign key(STATION_NO) references Stations(STATION_NO));
create table STations (Station_no int primary key ,Time_IN TIme,TIME_out time);
insert into Stations values(547,"04:51:45","16:40:00");
insert into Stations values(542,"12:35:54","8:13:00");
insert into Stations values(325,"09:42:05","10:00:00");
insert into Stations values(545,"18:15:00","12:10:00");
select * from stations;
insert into track values(5,"PUNJAB","JAMMU & KASHMIR",542);
insert into track values(9,"CHENNAI","HARYANA",325);
insert into track values(3,"GUJARAT","ANDHRA",545);
insert into track values(12,"RAMESHWARAM","GOA",547);
select * from track;
insert into train values(123,"ANANTAPURI EXPRESS",12);
insert into train values(198,"NELLAI EXPRESS",9);
insert into train values(145,"PANDIAN EXPRESS",3);
insert into train values(102,"SHADHAPTHI EXPRESS",5);
select * from train;
insert into passenger values("ARJUN",123,"VELLORE","BANGALORE",3,"2019-01-21");
insert into passenger values("SATHISH",145,"HARYANA","DELHI",3,"2019-11-14");
insert into passenger values("KARAN",198,"VELLORE","CHENNAI",3,"2019-09-23");
insert into passenger values("SIVANT",102,"GOA","BANGALORE",3,"2019-08-14");
select * from passenger;



select * from passenger p,train t , track tr,stations s 
where s.station_no = tr.station_no and
tr.track_no = t.track_no and
t.train_id = p.train_id and
p.name = "SATHISH"; 

select * from passenger p where train_id = 123;


select * from stations where time_in > "12:30:00";

select * from train where train_id = 145;