CREATE database employees;
use employees;
create table customers
(id int primary key,
name varchar(50),
age int,
address varchar(25),
salary decimal(8,2));
create table customerrecord
(descript varchar(50));
DELIMITER $$
CREATE trigger TRIGGER7 
BEFORE INSERT ON CUSTOMERS FOR EACH ROW 
BEGIN
INSERT INTO CUSTOMERRECORD VALUES(NEW.NAME);
END  $$
DELIMITER ;
INSERT INTO CUSTOMERS VALUES(45,"SATHISH",18,"Porur",41000);
SELECT * FROM CUSTOMERRECORD



