create database work;
use work;
create table worker
(
    WORKER_ID    INT PRIMARY KEY,
    FIRST_NAME   VARCHAR(25) NOT NULL,
    LAST_NAME    VARCHAR(25) NOT NULL,
    SALARY       INT,
    jOINING_DATE TIMESTAMP,
    DEPARTMENT   VARCHAR(20)
);
INSERT INTO worker
VALUES (001, 'NIHARIKA', 'ARORA', 20000, '13-02-25 09:00:00', 'HR'),
       (002, 'AYUSHI', 'GURONDA', 5000, '2015-02-10 09:00:00', 'Admin'),
       (003, 'PRIYANSHA', 'CHOUKSEY', 25000, '2014-05-16 09:00:00', 'HR'),
       (004, 'APARNA', 'DEPHPANDE', 8000, '2016-12-20 09:00:00', 'Admin'),
       (005, "Shafali", "Jain", 21000, "2015-08-29 09:00:00", "ADMIN"),
       (006, "Suchitha", "Joshi", 20000, "2017-02-12 09:00:00", "ACCOUNT"),
       (007, "Shubi", "Mishra", 15000, "2018-03-23 09:00:00", "ADMIN"),
       (008, "Devyani", "Patidar", 18000, "2014-05-02 09:00:00", "ACCOUNT");